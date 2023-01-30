import copy
from typing import List, Any, Union

from s2s.pddl.pddl import Proposition, Clause, Probabilistic, RewardPredicate, IdentityFluent
from s2s.pddl.pddl_operator import PDDLOperator, _PrettyPrint
from s2s.pddl.proposition import TypedPredicate
from s2s.utils import indent


class Slot:

    def __init__(self, precondition, effect):
        self.precondition = precondition
        self.effect = effect


class TypedPDDLOperator(PDDLOperator):
    """
    An instantiation of a lifted, typed PPDDL operator
    """

    def __init__(self, operator: PDDLOperator):

        self._option = operator.option
        self._partition = operator.partition
        self._learned_operator = operator._learned_operator
        self.name = operator.name

        self.preconditions = [Proposition.not_failed()]
        self.effects = list()

        self.effects = list()
        self._slots = list()

    # def __init__(self, name: str, option: int, partition: int):
    #     self._option = option
    #     self._partition = partition
    #     self.name = name
    #     self.preconditions = [Proposition.not_failed()]
    #     self.effects = list()
    #     self._slots = list()

    def add_precondition(self, predicate: TypedPredicate):
        self.add_preconditions([predicate])

    def add_preconditions(self, predicates: List[TypedPredicate]):
        super().add_preconditions(predicates)

    def add_effect(self, effect: List[TypedPredicate], probability: float = 1, reward: float = None):
        super().add_effect(effect, probability, reward)

    def slots(self):
        for slot in self._slots:
            yield slot.precondition, slot.effect

    @property
    def is_grounded(self) -> bool:
        """
        Check if all the predicates in the operators are ground to objects in a task
        """
        for x in self.predicates():
            if not x.is_grounded:
                return False
        return True

    def get_grounding(self) -> List[int]:
        """
        Get the objects that instantiate this operator.
        :return: a list of object IDs
        """
        objects = set()
        for predicate in self.predicates():
            if isinstance(predicate, TypedPredicate):
                objects.update(predicate.grounding)
        return sorted(list(objects))

    def predicates(self):
        for x in self.preconditions:
            yield x
        for _, effect, _ in self.effects:
            for x in effect:
                yield x

    def is_linked(self):
        """
        Returns whether the linking function has been added to the operator to ground it in the current task
        """
        return len(self._slots) > 0

    def transfer(self):
        """
        Prepare the operator so that it can be transferred. This involves removing all problem-specific information
        from the operator
        """
        self._slots.clear()  # remove the linking function
        for x in self.predicates():
            if isinstance(x, TypedPredicate):
                # remove the grounding of parameters
                x.grounding.clear()
                x.object_to_params.clear()
        return self

    def link(self, preconditions: Any, effects: Any = None, ):
        self._slots.append(Slot(preconditions, effects))

    def __str__(self):
        return ';{}\n{}'.format(
            'grounded' if self.is_grounded else 'abstract',
            self.pretty_print()
        )

    def pretty_print(self, index=None, option_descriptor=None, **kwargs):
        """
        Print everything out nicely
        """
        probabilistic = kwargs.get('probabilistic', True)
        use_rewards = kwargs.get('use_rewards', True)
        return str(_TypedPrettyPrint(self, index, probabilistic, use_rewards, option_descriptor))


class _TypedPrettyPrint(_PrettyPrint):
    _operator: TypedPDDLOperator

    def __str__(self):
        if self._option_descriptor is None:
            name = self._operator.name
        else:
            name = '{}-partition-{}'.format(self._option_descriptor(self._operator.option),
                                            self._operator.partition)
        if self._index is not None:
            name += '-{}'.format(self._index)

        param_types = dict()
        objects_seen = set()
        objects_to_param = dict()
        for predicate in self._operator.predicates():
            if isinstance(predicate, TypedPredicate):
                for object, type in zip(predicate.grounding, predicate.types):
                    if object not in objects_seen:
                        var_name = chr(ord('a') + len(objects_seen))
                        objects_seen.add(object)
                        param_types[var_name] = type
                        objects_to_param[object] = var_name

        for predicate in self._operator.predicates():
            if isinstance(predicate, TypedPredicate):
                predicate.object_to_params = objects_to_param

        if self._probabilistic:
            effects = self._operator.effects
        else:
            effects = [max(self._operator.effects, key=lambda x: x[0])]  # get most probable

        precondition = Clause(self._operator.preconditions)

        # TODO probably a better way to do this, but no idea how...
        if self._operator.is_linked():
            operator_reps = list()
            for slot_idx, (start_preconditions, end_effects) in enumerate(self._operator.slots()):

                # add start link
                linked_precondition = copy.deepcopy(precondition)
                for p in start_preconditions:
                    if isinstance(p, IdentityFluent):
                        if len(p.mask) > 1:
                            raise NotImplementedError("Haven't implemented fluents over multiple objects!")
                        param = objects_to_param[p.mask[0]]
                        p = p(param)  # instantiate!
                    linked_precondition.add(p)

                effect = Probabilistic()
                for prob, eff, reward in effects:

                    clause = Clause(eff)
                    # add end link
                    if end_effects is not None and clause.has_effect():
                        for e in end_effects:
                            clause.add(e)
                    if self._use_rewards and reward is not None:
                        clause.add(RewardPredicate(reward))  # add the reward
                    effect.add(clause, prob)

                if len(effects) > 1:
                    effect = '\n' + indent(str(effect), 2)
                else:
                    effect = str(effect)

                params = ' '.join(['?{} - type{}'.format(param, type) for param, type in param_types.items()])
                operator_reps.append('(:action {}\n\t:parameters ({})\n\t:precondition {}\n\t:effect {}\n)'
                                     .format('{}-{}'.format(name, slot_idx),
                                             params,
                                             linked_precondition,
                                             effect))
            return '\n\n'.join(operator_reps)

        else:
            effect = Probabilistic()
            for prob, eff, reward in effects:
                if self._use_rewards and reward is not None:
                    clause = Clause(eff + [RewardPredicate(reward)])  # add the reward
                else:
                    clause = Clause(eff)
                effect.add(clause, prob)

            if len(effects) > 1:
                effect = '\n' + indent(str(effect), 2)
            else:
                effect = str(effect)

            params = ' '.join(['?{} - type{}'.format(param, type) for param, type in param_types.items()])
            return '(:action {}\n\t:parameters ({})\n\t:precondition {}\n\t:effect {}\n)'.format(name,
                                                                                                 params,
                                                                                                 precondition,
                                                                                                 effect)
