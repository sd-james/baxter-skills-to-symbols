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
from s2s.planner.mgpt_planner import mGPT
from s2s.utils import save, exists


def clean(x):
    x = x.replace('option-0', 'PickupMug')
    x = x.replace('option-1', 'MachineOn')
    x = x.replace('option-2', 'MachineOff')
    x = x.replace('option-3', 'PutMugInMachine')
    x = x.replace('option-4', 'WalkToMug')
    x = x.replace('option-5', 'WalkToMachine')
    return x


if __name__ == '__main__':

    mdpsim_path = '../planner/mdpsim-1.23/mdpsim'
    mgpt_path = '../planner/mgpt/planner'

    import numpy as np

    x = np.array(list(range(10, 99, 10)) + list(range(100, 401, 20)))
    y = np.zeros_like(x).astype(float)
    errs = np.zeros_like(x).astype(float)

    planner = mGPT(mdpsim_path=mdpsim_path, mgpt_path=mgpt_path)

    transitions = list(range(10, 99, 10)) + list(range(100, 401, 20))
    for i, n_transitions in enumerate(transitions):

        values = list()
        for experiment in range(10):

            dir = 'exp{}-n{}'.format(experiment, n_transitions)
            domain = 'output-spatial/{}/domain.pddl'.format(dir)
            problem = 'output-spatial/{}/problem.pddl'.format(dir)
            try:
                valid, output = planner.find_plan(domain, problem)
            except:
                valid = False
            print(experiment, n_transitions)
            print(valid)

            if valid:
                print([clean(x) for x in output.path])
            else:
                print([])

            if valid and len(output.path) == 7:
                # if len(output.path) != 7:
                #     raise ValueError
                values.append(1)
            else:

                values.append(0)

                # if len(values) > 0 and values[-1] == 1:
                #     values.append(1)
                # else:
                #     values.append(0)

        y[i] = np.mean(values)
        errs[i] = np.var(values)

    print(x)
    print(y)
    print(errs)

    import matplotlib.pyplot as plt

    plt.plot(x, y)
    plt.fill_between(x, y - errs, y + errs)
    plt.show()
