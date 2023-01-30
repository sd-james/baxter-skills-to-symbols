import numpy as np

from s2s.utils import indent

TYPES = {
    -1: 'None',
    2: 'CounterTop',
    44: 'Mug',
    33: 'CoffeeMachine',
    14: 'Shelf',
}

def describe_object(obj, type):
    if type in TYPES:
        return '{}-{}'.format(TYPES[type], obj)
    return 'object-{}'.format(obj)

def describe_data(state):
    key_atts = {
        2: ["Receptacle_Mug"],
        14: ["Receptacle_Mug"],
        33: ["Receptacle_Mug", "isToggled"],
        44: ["isFilledWithLiquid", "isPickedUp", "ParentReceptacle_CounterTop", "ParentReceptacle_CoffeeMachine",
             "ParentReceptacle_Shelf"]
    }

    meanings = ['isToggled', 'isBroken', 'isFilledWithLiquid', 'isDirty', 'isUsedUp', 'isCooked', 'isSliced', 'isOpen',
                'isPickedUp', 'Receptacle_StoveBurner', 'Receptacle_Drawer', 'Receptacle_CounterTop',
                'Receptacle_Cabinet',
                'Receptacle_StoveKnob', 'Receptacle_Window', 'Receptacle_Sink', 'Receptacle_Floor', 'Receptacle_Book',
                'Receptacle_Bottle', 'Receptacle_Knife', 'Receptacle_Microwave', 'Receptacle_Bread', 'Receptacle_Fork',
                'Receptacle_Shelf', 'Receptacle_Potato', 'Receptacle_HousePlant', 'Receptacle_Toaster',
                'Receptacle_SoapBottle',
                'Receptacle_Kettle', 'Receptacle_Pan', 'Receptacle_Plate', 'Receptacle_Tomato', 'Receptacle_Vase',
                'Receptacle_GarbageCan', 'Receptacle_Egg', 'Receptacle_CreditCard', 'Receptacle_WineBottle',
                'Receptacle_Pot',
                'Receptacle_Spatula', 'Receptacle_PaperTowelRoll', 'Receptacle_Cup', 'Receptacle_Fridge',
                'Receptacle_CoffeeMachine',
                'Receptacle_Bowl', 'Receptacle_SinkBasin', 'Receptacle_SaltShaker', 'Receptacle_PepperShaker',
                'Receptacle_Lettuce',
                'Receptacle_ButterKnife', 'Receptacle_Apple', 'Receptacle_DishSponge', 'Receptacle_Spoon',
                'Receptacle_LightSwitch',
                'Receptacle_Mug', 'Receptacle_ShelvingUnit', 'Receptacle_Statue', 'Receptacle_Stool',
                'Receptacle_Faucet',
                'ParentReceptacle_StoveBurner', 'ParentReceptacle_Drawer', 'ParentReceptacle_CounterTop',
                'ParentReceptacle_Cabinet',
                'ParentReceptacle_StoveKnob', 'ParentReceptacle_Window', 'ParentReceptacle_Sink',
                'ParentReceptacle_Floor',
                'ParentReceptacle_Book', 'ParentReceptacle_Bottle', 'ParentReceptacle_Knife',
                'ParentReceptacle_Microwave',
                'ParentReceptacle_Bread', 'ParentReceptacle_Fork', 'ParentReceptacle_Shelf', 'ParentReceptacle_Potato',
                'ParentReceptacle_HousePlant', 'ParentReceptacle_Toaster', 'ParentReceptacle_SoapBottle',
                'ParentReceptacle_Kettle',
                'ParentReceptacle_Pan', 'ParentReceptacle_Plate', 'ParentReceptacle_Tomato', 'ParentReceptacle_Vase',
                'ParentReceptacle_GarbageCan',
                'ParentReceptacle_Egg', 'ParentReceptacle_CreditCard', 'ParentReceptacle_WineBottle',
                'ParentReceptacle_Pot',
                'ParentReceptacle_Spatula', 'ParentReceptacle_PaperTowelRoll', 'ParentReceptacle_Cup',
                'ParentReceptacle_Fridge',
                'ParentReceptacle_CoffeeMachine', 'ParentReceptacle_Bowl', 'ParentReceptacle_SinkBasin',
                'ParentReceptacle_SaltShaker',
                'ParentReceptacle_PepperShaker', 'ParentReceptacle_Lettuce', 'ParentReceptacle_ButterKnife',
                'ParentReceptacle_Apple', 'ParentReceptacle_DishSponge',
                'ParentReceptacle_Spoon', 'ParentReceptacle_LightSwitch',
                'ParentReceptacle_Mug',
                'ParentReceptacle_ShelvingUnit', 'ParentReceptacle_Statue', 'ParentReceptacle_Stool',
                'ParentReceptacle_Faucet', 'objectType']

    desc = []
    start_idx = 0
    for object in state:
        for i, x in enumerate(object):
            if i == len(meanings) - 1:
                type = int(round(x))
                desc.insert(start_idx, '{}:{}'.format(meanings[i], TYPES.get(type, 'unknown {}'.format(type))))
                start_idx = len(desc) + 1
            elif x != -1:
                type = int(round(object[-1]))
                if type not in TYPES:
                    continue
                if meanings[i] in key_atts[type]:
                    desc.append('{}:{}'.format(meanings[i], int(round(x))))
        desc.append('---------------------------------')
    return '\n'.join(desc)


def describe_symbol(predicate):
    data = predicate.sample(100)
    start = set()
    for d in data:
        start.add(describe_data(d))
    for x in start:
        print(indent(x, 2))
        print(indent("##############################", 3))
    print()


def describe_partitions(partitioned_options):
    for option, partitions in partitioned_options.items():
        print("Option {}".format(option))
        for i, partition in enumerate(partitions):
            print("\tPartition {}".format(i))
            start = set()
            end = set()
            for prob, states, next_states, masks in partition.effects():
                for state, next_state, mask in zip(states, next_states, masks):

                    if len(mask) == 1:
                        start.add(describe_data(state[mask]))
                        end.add(describe_data(next_state[mask]))
                    else:
                        start.add(describe_data(np.squeeze(state[mask])))
                        end.add(describe_data(np.squeeze(next_state[mask])))

            print('\tSTART')

            for x in start:
                print(indent(x, 2))
                print(indent("##############################", 3))
            print()
            print('\tEND')

            for x in end:
                print(indent(x, 2))
                print(indent("##############################", 3))
            print('*********************************************')
