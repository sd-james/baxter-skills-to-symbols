from typing import List

from s2s.env.s2s_env import S2SEnv
from s2s.pddl.domain import PDDLDomain
from s2s.pddl.pddl import Proposition, TypedPredicate
from s2s.pddl.pddl_operator import PDDLOperator
from s2s.pddl.typed_operator import TypedPDDLOperator


class TypedPDDLDomain(PDDLDomain):

    def __init__(self, name: str, vocabulary: List[TypedPredicate], operators: List[PDDLOperator], **kwargs):
        super().__init__(name, vocabulary, operators, **kwargs)
        self._types = set()
        for predicate in vocabulary:
            self._types.update(predicate.types)

    def _get_requirements(self):
        # return '(:requirements :fluents :typing :strips{}{})'.format(
        #     ' :probabilistic-effects' if self.probabilistic else '',
        #     ' :rewards' if self.specify_rewards else '',
        #     ' :conditional_effects' if self.conditional_effects else '')
        return '(:requirements :typing :strips{})'.format(
            ' :conditional_effects' if self.conditional_effects else '')

    def _get_functions(self):

        # add in types here!
        t = ''
        for type in self._types:
            t += '\n\ttype{} - {}'.format(type, 'object')

        types = "(:types {}\n)\n".format(t)

        if self.conditional_effects:
            functions = '(:functions (linking ?x) (id ?x))'
        else:
            functions = '(:functions (id ?x))'

        return "\n\n{}".format(types)

        # return "\n\n{}\n\n{}".format(types, functions)

    @property
    def predicates(self) -> List[TypedPredicate]:
        return [predicate for predicate in self.propositions if isinstance(predicate, TypedPredicate)]

    def transfer(self):
        for operator in self.operators:
            if isinstance(operator, TypedPDDLOperator):
                operator.transfer()