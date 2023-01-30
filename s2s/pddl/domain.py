from typing import List, Iterable, Union

from s2s.env.s2s_env import S2SEnv
from s2s.pddl.operator import SimplePrettyPrint
from s2s.pddl.pddl import Proposition
from s2s.pddl.pddl_operator import PDDLOperator
from s2s.pddl.unique_list import UniquePredicateList
from s2s.utils import indent


class PDDLDomain:

    def __init__(self, name: str, vocabulary: Union[UniquePredicateList, List[Proposition]], operators: List[PDDLOperator], **kwargs):
        self._name = name
        self._vocabulary = vocabulary
        self._operators = operators
        self._probabilistic = kwargs.get('probabilistic', True)
        self._rewards = kwargs.get('specify_rewards', True)
        self._conditional_effects = kwargs.get('conditional_effects', False)
        self._n_problem_symbols = 0
        self.option_descriptor = None

    def __getstate__(self):
        state = self.__dict__.copy()
        state['option_descriptor'] = None  # pickle no likee lambda.
        return state

    @property
    def probabilistic(self):
        return self._probabilistic

    @probabilistic.setter
    def probabilistic(self, value):
        self._probabilistic = value

    @property
    def specify_rewards(self):
        return self._rewards

    @specify_rewards.setter
    def specify_rewards(self, value):
        self._rewards = value

    @property
    def conditional_effects(self):
        # return self._conditional_effects todo implement
        return False

    @conditional_effects.setter
    def conditional_effects(self, value):
        self._conditional_effects = value

    def set_n_problem_symbols(self, n_problem_symbols):
        self._n_problem_symbols = n_problem_symbols

    def copy(self, keep_operators=True) -> 'PDDLDomain':
        """
        Makes a copy of the the PDDL domain
        :param keep_operators: whether the PDDL operators should be copied
        """
        operators = self._operators if keep_operators else []
        new_domain = PDDLDomain(self.name, self._vocabulary, operators, probabilistic=self.probabilistic,
                                specify_rewards=self.specify_rewards, conditional_effects=self.conditional_effects)
        new_domain.set_n_problem_symbols(self._n_problem_symbols)
        return new_domain

    @property
    def propositions(self) -> Iterable[Proposition]:
        return self._vocabulary

    @property
    def operators(self) -> List[PDDLOperator]:
        return self._operators

    def add_operator(self, operator: PDDLOperator):
        self._operators.append(operator)

    def add_predicate(self, predicate: Proposition):
        self._vocabulary.append(predicate)

    @property
    def name(self):
        try:
            return 'env' if self._name is None else self._name
        except AttributeError:
            return 'env'

    def _get_requirements(self):
        return '(:requirements :strips{}{})'.format(' :probabilistic-effects' if self.probabilistic else '',
                                                    ' :rewards' if self.specify_rewards else '',
                                                    ' :conditional_effects' if self.conditional_effects else '')

    def _get_functions(self):
        if self.conditional_effects:
            return '\n\n(:functions (linking ?x))'
        return ''

    def __str__(self):
        comment = ';Automatically generated {} domain PPDDL file.'.format(self.name)
        definition = 'define (domain {})'.format(self.name)
        requirements = self._get_requirements()

        symbols = '{}\n'.format(Proposition.not_failed()) + '\n'.join(
            ['{}'.format(x) for x in self._clean(self._vocabulary)])

        requirements += self._get_functions()

        predicates = '(:predicates\n{}\n)'.format(indent(symbols))

        format_spec = ':'
        if self._probabilistic:
            format_spec += 'p'
        if self._rewards:
            format_spec += 'r'

        operators = '\n\n'.join(
            [x.pretty_print(i, self.option_descriptor, probabilistic=self.probabilistic,
                            use_rewards=self.specify_rewards, conditional_effects=self.conditional_effects) for i, x in
             enumerate(self._operators)])

        description = '{}\n({}\n{}\n\n{}\n\n{}\n)'.format(
            comment,
            definition,
            indent(requirements),
            indent(predicates),
            indent(operators)
        )
        return description

    def to_simple(self):
        predicates = ' '.join(['({})'.format(Proposition.not_failed())] + ['({})'.format(x) for x in self._vocabulary])

        operators = '\n'.join(
            [str(SimplePrettyPrint(x, i, self._probabilistic, self._rewards, self._env.describe_option)) for i, x in
             enumerate(self._operators)])

        description = 'predicates:{}\nn_operators:{}\n\n{}'.format(
            predicates,
            len(self._operators),
            operators
        )
        return description

    def _clean(self, predicates):
        # return predicates
        # remove those that do not appear in operators
        used_predicates = list()
        for predicate in predicates:
            name = predicate.name
            found = False
            for operator in self._operators:
                for precon in operator.preconditions:
                    if precon.name == name:
                        found = True
                        break
                if found:
                    break
                for _, effects, _ in operator.effects:
                    for eff in effects:
                        if eff.name == name:
                            found = True
                            break
                if found:
                    break
            for start in self._vocabulary.start_predicates:
                if len(start.mask) == 1 and start.name == name:
                    found = True
                    break
            if found:
                used_predicates.append(predicate)

        return used_predicates
