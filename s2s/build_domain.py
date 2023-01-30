import numpy as np

from s2s.aosm_env import AosmEnv
from s2s.core.build_model import build_model

if __name__ == '__main__':

    small = True
    n_components = 5
    # type = 'vec'
    type = 'FastICA_{}'.format(n_components)
    if small:
        type = '{}_small'.format(type)
    save_dir = '../data/output/baxter_data_{}'.format(type.lower(), small)


    env = AosmEnv()
    env.load("data/agent_centric_transitions_100")

    # Build the PDDL model
    domain, problem = build_model(env,
                                  save_dir=save_dir,
                                  n_jobs=1,
                                  seed=0,
                                  brute_force_features=True,
                                  precondition_c_range=np.linspace(2, 20, 20),
                                  precondition_gamma_range=np.linspace(4, 24, 20),
                                  max_precondition_samples=10000,
                                  init_min_samples=np.inf,
                                  # effect_min_samples=np.inf,  # options already subgoal!
                                  specify_rewards=False,
                                  visualise=True,
                                  verbose=True)
