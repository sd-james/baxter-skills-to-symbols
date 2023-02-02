from s2s.aosm_env import AosmEnv
from s2s.core.build_pddl import build_pddl
from s2s.core.build_problem_description import find_goal_symbols, build_problem_description
from s2s.core.learn_operators import learn_preconditions, learn_effects, combine_learned_operators
from s2s.core.lift_operators import to_typed_pddl
from s2s.core.partition import partition_options
from s2s.describe import describe_partitions, describe_symbol
from s2s.pddl.domain import PDDLDomain
from s2s.pddl.problem_description import PDDLProblem
from s2s.pddl.proposition import Proposition
from s2s.utils import save, load, indent, get_start_state
import numpy as np


if __name__ == '__main__':
    save_dir = ''

    env = AosmEnv()
    # env.load("data/agent_centric_transitions_1000")
    # transition_data, initiation_data = env.get_transition_data(), env.get_init_data()
    # save((transition_data, initiation_data), 'data.pkl')
    # exit(0)

    transition_data, initiation_data = load('data.pkl')

    # 2. Partition options
    partitions = partition_options(env,
                                   transition_data,
                                   effect_epsilon=0.001,
                                   init_epsilon=0.001,
                                   verbose=True,
                                   n_jobs=1)

    exit(0)

    #
    # save(partitions, 'partitions.pkl')

    partitions = load('partitions.pkl')

    # describe_partitions(partitions)
    # exit(0)

    # preconditions = learn_preconditions(initiation_data,
    #                                     partitions,
    #                                     augment_negative=True,
    #                                     verbose=True,
    #                                     n_jobs=8)
    # save(preconditions, 'preconditions.pkl')

    preconditions = load('preconditions.pkl')

    # effects = learn_effects(partitions, verbose=True, n_jobs=8)
    # save(effects, 'effects.pkl')

    effects = load('effects.pkl')

    # operators = combine_learned_operators(env, partitions, preconditions, effects)
    # save(operators, 'operators.pkl')

    operators = load('operators.pkl')


    #
    # # 5. Build PDDL
    # factors, vocabulary, schemata = build_pddl(env, transition_data, operators, verbose=True, n_jobs=4)
    # pddl = PDDLDomain(env.name, vocabulary, schemata)
    # # #
    # save(factors, 'factors.pkl')
    # save(vocabulary, 'predicates.pkl')
    # save(schemata, 'schemata.pkl')
    # save(pddl, 'domain.pkl')
    # save(pddl, 'domain.pddl', binary=False)
    # save(pddl.to_simple(), 'domain.txt', binary=False)
    #
    # exit(0)

    # pddl = load('domain.pkl')
    #  typed_pddl = to_typed_pddl(env.name, pddl, verbose=True)
    # save(typed_pddl, 'typed_domain.pkl')
    # save(typed_pddl, 'typed_domain.pddl', binary=False)

    # typed_pddl = load('typed_domain.pkl')
    # save(typed_pddl, 'typed_domain.pddl', binary=False)
    # exit(0)

    # vocabulary = load('predicates.pkl')
    # for x in vocabulary:
    #     print(x.name)
    #     describe_symbol(x)
    #
    # exit(0)

    # # 6. Build PDDL problem file
    typed_pddl = load('typed_domain.pkl')
    factors = load('factors.pkl')
    pddl_problem = build_problem_description(env, typed_pddl.propositions, factors, transition_data, 77)
    save(pddl_problem, 'problem.pkl')
    save(pddl_problem, 'problem.pddl', binary=False)

    # pddl_problem = PDDLProblem('p1', env.name)
    # pddl_problem.add_start_proposition(Proposition.not_failed())
    # for prop in vocabulary.start_predicates:
    #     pddl_problem.add_start_proposition(prop)
    #
    #
    #
    #
    # #
    # goal_prob, goal_symbols = find_goal_symbols(factors, vocabulary, transition_data, verbose=True)
    # pddl_problem.add_goal_proposition(Proposition.not_failed())
    # for prop in vocabulary.goal_predicates + goal_symbols:
    #     pddl_problem.add_goal_proposition(prop)
    #
    # save(pddl_problem, '{}/problem.pkl')
    # save(pddl_problem, '{}/problem.pddl', binary=False)
