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

    env = AosmEnv()
    # env.load("../agent_centric_transitions_spatial1000")
    # transition_data, initiation_data = env.get_transition_data(), env.get_init_data()
    # #
    # save((transition_data, initiation_data))
    #
    # exit(0)

    transition_data, initiation_data = load()

    # temp = get_start_state(transition_data)
    # save(temp, 'start_state_spatial.pkl')
    # exit(0)

    # 2. Partition options
    # partitions = partition_options(env,
    #                                transition_data,
    #                                effect_epsilon=0.001,
    #                                init_epsilon=0.001,
    #                                verbose=True,
    #                                n_jobs=1)
    # save(partitions, 'partitions_spatial.pkl')
    partitions = load('partitions_spatial.pkl')

    # TODO WILL NEED TO INCLUDE position in preconds!

    preconditions = learn_preconditions(initiation_data,
                                        partitions,
                                        augment_negative=True,
                                        verbose=True,
                                        max_precondition_samples=5000,
                                        n_jobs=4)
    save(preconditions, 'preconditions_spatial.pkl')
    # exit(0)

    effects = learn_effects(partitions, verbose=True, n_jobs=4)

    operators = combine_learned_operators(env, partitions, preconditions, effects)

    #
    # # 5. Build PDDL
    factors, vocabulary, schemata = build_pddl(env, transition_data, operators, verbose=True, n_jobs=4)
    pddl = PDDLDomain(env.name, vocabulary, schemata)

    typed_pddl = to_typed_pddl(env.name, pddl, verbose=True)

    save(typed_pddl, 'spatial_typed_domain.pddl', binary=False)

    pddl_problem = build_problem_description(env, typed_pddl.propositions, factors, transition_data, 78)
    save(pddl_problem, 'spatial_problem.pddl', binary=False)
