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
from s2s.planner.mgpt_planner import mGPT
from s2s.utils import save, load, indent, get_start_state
import numpy as np


def clean(x):

    x = x.replace('option-0', 'PickupMug')
    x = x.replace('option-1', 'MachineOn')
    x = x.replace('option-2', 'MachineOff')
    x = x.replace('option-3', 'PutMugInMachine')
    x = x.replace('option-4', 'WalkToMug')
    x = x.replace('option-5', 'WalkToCoffeeMachine')

    return x


import matplotlib.pyplot as plt

def vis_partitions(partitions):

    for option in [4,5]:
        for partition in partitions[option]:
            
            x = list()
            z = list()
            o = list()

            for _, _, states in partition.masked_effects():
                for state in states:
                    x.append(state[0][0])
                    z.append(state[0][2])
                    o.append(state[0][3])


            plt.xlim(-1, 1)
            plt.ylim(-1, 1)
            plt.title('Option {} #{}'.format(option, partition.partition))
            plt.scatter(x, z, c=o)
            plt.show()
            plt.pause(1)


def vis_dist(title, kde):
    x = list()
    z = list()
    o = list()
    states = kde.sample(100)
    for state in states:
        x.append(state[0][0])
        z.append(state[0][2])
        o.append(state[0][3])

        plt.xlim(-1, 1)
    plt.ylim(-1, 1)
    plt.title(title)
    plt.scatter(x, z, c=o)
    plt.show()

def vis_effects(effects):

    for (option, part), eff in effects.items():
        if option in [4,5]:
            for _, kde, _ in eff:
                vis_dist('Option {} #{}'.format(option, part), kde)
                plt.pause(1)

if __name__ == '__main__':

    env = AosmEnv(spatial=True)
    env.load("data/agent_centric_transitions_spatial_1000")
    transition_data, initiation_data = env.get_transition_data(), env.get_init_data()
    # #
    save((transition_data, initiation_data), 'data_spatial.pkl')

    # exit(0)

    transition_data, initiation_data = load('data_spatial.pkl')

    # temp = get_start_state(transition_data)
    # save(temp, 'start_state_spatial.pkl')
    # exit(0)

    # # 2. Partition options
    # partitions = partition_options(env,
    #                                transition_data,
    #                                effect_epsilon=0.001,
    #                                init_epsilon=0.001,
    #                                verbose=True,
    #                                n_jobs=1)
    # save(partitions, 'partitions_spatial.pkl')
    #
    # vis_partitions(partitions)

    partitions = load('partitions_spatial.pkl')


    # vis_partitions(partitions)
    #
    # # describe_partitions(partitions)
    # exit(0)

    # preconditions = learn_preconditions(initiation_data,
    #                                     partitions,
    #                                     augment_negative=True,
    #                                     verbose=True,
    #                                     max_precondition_samples=5000,
    #                                     n_jobs=12)
    # save(preconditions, 'preconditions_spatial.pkl')

    preconditions = load('preconditions_spatial.pkl')

    # effects = learn_effects(partitions, verbose=True, n_jobs=16)
    # save(effects, 'effects_spatial.pkl')

    effects = load('effects_spatial.pkl')

    # vis_effects(effects)

    # operators = combine_learned_operators(env, partitions, preconditions, effects)
    # save(operators, 'operators_spatial.pkl')

    operators = load('operators_spatial.pkl')

    # 5. Build PDDL
    # factors, vocabulary, schemata = build_pddl(env, transition_data, operators, n_types=46, verbose=True, n_jobs=16)
    # pddl = PDDLDomain(env.name, vocabulary, schemata)
    #
    # save(factors, 'factors_spatial.pkl')
    # save(vocabulary, 'predicates_spatial.pkl')
    # save(schemata, 'schemata_spatial.pkl')
    # save(pddl, 'domain_spatial.pkl')
    # save(pddl, 'domain_spatial.pddl', binary=False)
    # #
    # pddl = load('domain_spatial.pkl')
    #
    # typed_pddl = to_typed_pddl(env.name, pddl, verbose=True)
    # save(typed_pddl, 'typed_domain_spatial.pkl')
    # save(typed_pddl, 'typed_domain_spatial.pddl', binary=False)

    typed_pddl = load('typed_domain_spatial.pkl')
    factors = load('factors_spatial.pkl')
    pddl_problem = build_problem_description(env, typed_pddl.propositions, factors, transition_data, 78)
    save(pddl_problem, 'problem_spatial.pkl')
    save(pddl_problem, 'problem_spatial.pddl', binary=False)

    mdpsim_path = 'planner/mdpsim-1.23/mdpsim'
    mgpt_path = 'planner/mgpt/planner'

    planner = mGPT(mdpsim_path=mdpsim_path, mgpt_path=mgpt_path)
    try:
        valid, output = planner.find_plan(typed_pddl, pddl_problem)
    except:
        valid = False
    print(valid)

    if valid:
        print([clean(x) for x in output.path])
    else:
        print([])
