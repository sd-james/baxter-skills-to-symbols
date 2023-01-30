import copy
from typing import Optional, List, Union, Tuple, Iterable

from s2s.estimators.estimators import StateDensityEstimator
from s2s.utils import if_not_none, indent


class Proposition:
    """
    A non-typed, non-lifted predicate (i.e. a proposition)
    """

    def __hash__(self):
        return hash(self.name)

    def __eq__(self, other):
        return hash(self) == hash(other)

    def __init__(self, name: str, kde: Optional[StateDensityEstimator]):
        self._name = name
        self._kde = kde
        self.sign = 1  # whether true or the negation of the predicate
        self._noop = kde is None # or kde.is_noop

    @property
    def is_noop(self):
        return self._noop

    @property
    def estimator(self) -> StateDensityEstimator:
        return self._kde

    @property
    def name(self) -> str:
        return self._name

    @property
    def mask(self) -> List[int]:
        if self.is_noop:
            return []
        return self.estimator.mask

    def sample(self, n_samples):
        return self.estimator.sample(n_samples)

    @property
    def is_grounded(self) -> bool:
        return True  # propositions are ground by default

    def negate(self) -> 'Proposition':
        """"
        Creates a copy of the predicate, negated
        """
        clone = copy.copy(self)
        clone.sign *= -1
        return clone

    def __str__(self):
        if self.sign < 0:
            return '(not ({}))'.format(self.name)
        return '({})'.format(self.name)

    @staticmethod
    def not_failed():
        return Proposition("notfailed", None)

    @staticmethod
    def conjoin(propositions: Tuple['Proposition']):
        if len(propositions) == 1:
            return propositions[0]
        conjunction = copy.deepcopy(propositions[0])
        for i in range(1, len(propositions)):
            proposition = propositions[i]
            conjunction._name += ' AND {}'.format(proposition.name)
            conjunction._kde.conjoin(proposition._kde)
        return conjunction


class TypedPredicate(Proposition):
    """
    A typed, lifted predicate
    """

    @classmethod
    def from_proposition(cls, proposition: Proposition, *types: Iterable[int]):
        """
        Create a typed predicate from the given proposition
        :param proposition: the initial proposition
        :param types: the types
        :return: the predicate
        """
        predicate = cls.__new__(cls)
        super(TypedPredicate, predicate).__init__(proposition.name, proposition.estimator)
        predicate.grounding = list()
        predicate.types = list(types)
        predicate.object_to_params = dict()
        return predicate


    def __init__(self, name, *types: Iterable[int]):
        super().__init__(name, None)
        self.grounding = list()
        self.types = list(types)
        self.object_to_params = dict()

    @property
    def is_grounded(self):
        return len(self.grounding) > 0

    @property
    def mask(self):
        return self.types

    @property
    def is_noop(self):

        if self.is_grounded:
            return False
        return super().is_noop

    #
    # def add_typed_param(self, type):
    #     self.param_types.append(type)
    #
    # def ground_types(self):
    #     if not self.is_grounded():
    #         raise ValueError
    #     for object, type in zip(self.grounding, self.param_types):
    #         yield object, type

    # ground the predicate with actual objects!
    def __call__(self, *objects):
        """
        Returns a new predicate ground with the given objects
        """
        pred = copy.copy(self)
        pred.grounding = list(objects)
        if len(pred.grounding) != len(pred.types):
            raise ValueError("Expected {} objects. Got {}".format(len(pred.types), len(pred.grounding)))
        return pred

    def __str__(self):

        s = None
        # this one is for predicates over grounded objects
        if self.is_grounded and len(self.object_to_params) == 0:
            s = '{} {}'.format(self.name, ' '.join(['{}'.format(name) for name in self.grounding]))

        # this one is for predicates over operator parameters
        elif self.is_grounded and len(self.object_to_params) > 0:
            var_names = [self.object_to_params[i] for i in self.grounding]
            s = '{} {}'.format(self.name, ' '.join(['?{}'.format(name) for name in var_names]))
            if self.sign < 0:
                return '(not ({}))'.format(s)
            return '({})'.format(s)

        # this one is for generic predicates that aren't grounded or linked to parameters
        else:
            var_names = [chr(ord('a') + i) for i in range(len(self.types))]
            s = '{} {}'.format(self.name,
                               ' '.join(['?{} - type{}'.format(name, t) for name, t in
                                         zip(var_names, self.types)]))
        if self.sign < 0:
            return '(not ({}))'.format(s)
        return '({})'.format(s)


class FluentPredicate(Proposition):

    def __init__(self, operator: str, name: str, value: float):
        """
        Create a new fluent
        :param operator: the operation to appy to the fluent (e.g. decrease)
        :param name: the name of the fluent
        :param value: the value to apply with the operator to the fluent
        """
        super().__init__(name, None)
        self._operator = operator
        self._value = value

    def __str__(self):
        return '({} ({}) {})'.format(self._operator, self.name, self._value)

    @property
    def is_noop(self):
        return False


class IdentityFluent(FluentPredicate):

    def __init__(self, object_id: int, name=None, is_parameter=True):
        """
        Create a new fluent that checks whether the given object has a particular ID
        :param object_id: the object ID
        :param name: the name of the parameter or object. This can be set later by instantiating the fluent
        :param is_parameter: whether the fluent is part of a parameterised operator, or is truly grounded (as in the
        PDDL problem definiton)
        """
        super().__init__('=', 'id', object_id)
        self._is_parameter = is_parameter  # whether the object is a parameter, or the object itself
        self._parameter = name  # this parameter value is decided by the operator itself

    @property
    def mask(self):
        return [int(self._value)]

    def __call__(self, *args):
        """
        Instantiate the predicate with a particular parameter. Creates a new predicate, and leave this unchanged
        :param args: the object parameter
        :return: a new predicate which has been instantiated
        """
        predicate = IdentityFluent(int(self._value))
        predicate._parameter = args[0]
        return predicate

    def __str__(self):
        name = '{} {}{}'.format(self.name, '?' if self._is_parameter else '', self._parameter)
        return '({} ({}) {})'.format(self._operator, name, self._value)


class RewardPredicate(FluentPredicate):
    """
    A proposition that handles changing reward
    """

    def __init__(self, predicted_reward: float):
        """
        Create a new reward proposition
        :param predicted_reward: teh predicted increase or decrease in reward
        """
        operator = 'increase' if predicted_reward >= 0 else 'decrease'
        super().__init__(operator, 'reward', abs(round(predicted_reward, 2)))


class Clause:
    """
    A collection of propositions
    """

    def __init__(self, symbols: List[Proposition] = None):
        """
        Create a new clause
        :param symbols: the propositions
        """
        symbols = if_not_none(symbols, list())
        self._symbols = copy.copy(symbols)

    def add(self, other: Proposition) -> 'Clause':
        return self.__add__(other)

    def __add__(self, other: Proposition) -> 'Clause':
        self._symbols.append(other)
        return self

    def has_effect(self):
        for x in self._symbols:
            if not x.is_noop:
                return True
        return False

    def __str__(self) -> str:
        # TODO? propositions = [x for x in self._symbols if not x.is_noop]
        propositions = [x for x in self._symbols]
        if len(propositions) == 0:
            raise ValueError("No propositions found")
        if len(propositions) == 1:
            return '{}'.format(propositions[0])
        return '(and {})'.format(' '.join(['{}'.format(x) for x in propositions]))


class Probabilistic:
    """
    A holder for probabilistic clauses
    """

    def __init__(self):
        self.prob_sum = 0
        self._values: List[Tuple[float, Clause]] = list()

    def add(self, value: Clause, prob=1) -> 'Probabilistic':
        self._values.append((prob, value))
        self.prob_sum += prob
        return self

    def __str__(self):

        if len(self._values) == 1:
            return str(self._values[0][1])

        effect = '(probabilistic'
        for prob, value in self._values:
            # if value.has_effect():
            prob = round(prob / self.prob_sum, 3)  # TODO probably a better way!
            effect += indent('\n{} {}'.format(prob, value), 2)
        effect += ')'
        return effect


class ConditionalEffect:

    def __init__(self, precondition: Union[Proposition, Clause], effect: Union[Clause, Probabilistic]):
        self._precondition = precondition
        self._effect = effect

    def __str__(self):
        precondition = indent(str(self._precondition), 2)
        effect = indent(str(self._effect), 2)
        return '(when\n{}\n{}\n)'.format(precondition, effect)
