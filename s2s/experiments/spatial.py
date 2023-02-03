import gc
import os

from tqdm import trange, tqdm

from s2s.aosm_env import AosmEnv
from s2s.core.build_pddl import build_pddl
from s2s.core.build_problem_description import build_problem_description
from s2s.core.learn_operators import learn_preconditions, learn_effects, combine_learned_operators
from s2s.core.lift_operators import to_typed_pddl
from s2s.core.partition import partition_options
from s2s.pddl.domain import PDDLDomain
from s2s.utils import save, exists


def build_model(env, transition_data, initiation_data):
    partitions = partition_options(env,
                                   transition_data,
                                   effect_epsilon=0.001,
                                   init_epsilon=0.001,
                                   verbose=False,
                                   n_jobs=20)

    preconditions = learn_preconditions(initiation_data,
                                        partitions,
                                        augment_negative=True,
                                        verbose=False,
                                        max_precondition_samples=5000,
                                        n_jobs=20)

    effects = learn_effects(partitions, verbose=False, n_jobs=20)

    operators = combine_learned_operators(env, partitions, preconditions, effects)

    factors, vocabulary, schemata = build_pddl(env, transition_data, operators, verbose=False, n_jobs=20,
                                               low_threshold=0.1, n_types=46,
                                               )
    pddl = PDDLDomain(env.name, vocabulary, schemata)

    typed_pddl = to_typed_pddl(env.name, pddl, verbose=False)

    pddl_problem = build_problem_description(env, typed_pddl.propositions, factors, transition_data, 78)

    return typed_pddl, pddl_problem


def run_experiment(experiment, n_transitions):
    save_dir = 'output-spatial'
    env = AosmEnv(spatial=True)
    dir = '{}/exp{}-n{}'.format(save_dir, experiment, n_transitions)
    if exists(dir):
        return False
    print("Doing {} {}".format(experiment, n_transitions))
    env.load("../data/spatial/agent_centric_transitions_spatial_{}_1000".format(experiment + 1), n_transitions)
    transition_data, initiation_data = env.get_transition_data(), env.get_init_data()
    try:
        pddl, problem = build_model(env, transition_data, initiation_data)
    except Exception as err:
        pddl = err
        problem = err
        # raise err

    os.makedirs(dir)
    save(pddl, '{}/{}'.format(dir, 'domain.pddl'), binary=False)
    save(problem, '{}/{}'.format(dir, 'problem.pddl'), binary=False)
    return True

def delete_bad():

    for experiment in range(10):
        transitions = list(range(10, 99, 10)) + list(range(100, 401, 100))
        for n_transitions in transitions:
            save_dir = 'output-non-spatial'
            dir = '{}/exp{}-n{}'.format(save_dir, experiment, n_transitions)
            with open('{}/domain.pddl'.format(dir), 'r') as file:
                for x in file:
                    if 'need at least one array to concatenate' in x:
                        print(dir)
                        import shutil
                        shutil.rmtree(dir)


if __name__ == '__main__':

    abspath = os.path.abspath(__file__)
    dname = os.path.dirname(abspath)
    os.chdir(dname)

    # os.system("C:\\Users\\Steve\\anaconda3\\envs\\s2h\\python.exe C:\\Users\\Steve\\PycharmProjects\\aosm-skills-to-symbols\\s2s\\experiments\\non_spatial.py")

    for experiment in trange(10):

        transitions = list(range(10, 101, 10)) + list(range(100, 401, 20))

        found = False
        for n_transitions in tqdm(transitions):
            if run_experiment(experiment, n_transitions):
                found = True
        if found:
            # os.system('/home/steve/anaconda3/envs/s2h/bin/python /media/hdd/Documents/PyCharmProjects/aosm-skills-to-symbols/s2s/experiments/spatial.py')
            # exit(0)
            gc.collect()
            pass


