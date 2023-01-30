data is represented as a pickle file, can be loaded as (for example)
import pickle
pickle.load(open("data/agent_centric_transitions_100","rb"))

the data file formatted as:
data = [valid_transition_list,state_action_possible_list,description_list]

Each of these components of data are described as:

valid_transition_list = [state, action, state', done]
state_action_possible_list = [state, action, feasible/not feasible]

so, valid_transition_list contains transitions that were executable and whether the episode is done or not
state_action_possible_list says whether an action was feasible or not in a state

to get a description of what state index i at time t is, you do:
desription_list[t][i]

Note that there are less entries in valid_transition_list than state_action_possible_list (since all attempted actions are logged in state_action_possible_list, but only ones that were executable are in valid_transition_list. description_list is aligned with state_action_possible_list, not with valid_transition_list)

Here are the action names, listed in order of the index they are represented by:
action_obj_list = [
["PickupObject",["Mug"]],
["ToggleObjectOn",["CoffeeMachine"]],
["ToggleObjectOff",["CoffeeMachine"]],
["PutObject",["CoffeeMachine","Mug"]],
["PutObject",["CounterTop","Mug"]],
]

2 = counter
14 = counter