import warnings

from typing import Dict, Union, Tuple

from s2s.core.object_types import EffectProfile


class KnowledgeBase:
    """
    This structure holds all the rules and types we've seen so far. Given a new task, we can pass a single structure in
    to do things like determine object types, etc
    """

    def __init__(self):
        self._types: Dict[int, EffectProfile] = dict()  # map types to effect profiles
        self._object_types: Dict[Tuple[int, int], int] = dict()  # map task, object to types
        self._to_base_objects: Dict[Tuple[int, int], int] = dict()  # map task, object to base object

    def add_type(self, task_id: int, object: int, base_object: int, profile: EffectProfile) -> None:
        """
        Add a new type
        :param task_id: the task ID
        :param object: the ID of the object
        :param base_object: the ID of the parent object
        :param profile: the effect profile of the new type
        """
        if base_object == object:  # if the object has no parent
            type = len(self._types)
            self._types[type] = profile  # add a new type
            self._object_types[(task_id, object)] = type  # map the object to that type
        else:
            self._to_base_objects[(task_id, object)] = base_object  # map the object to the parent type

    def get_type(self, task_id: int, object: int, warn=False) -> Tuple[bool, int]:
        """
        Return the type for the given object encountered in the specified task
        :param task_id: the task
        :param object: the object
        :param warn: if true, and the object type cannot be found, instead of throwing an error, print a warning and return -1
        :return: whether the object is a base object, and the object type
        """
        is_base = True
        if (task_id, object) in self._to_base_objects:
            object = self._to_base_objects[(task_id, object)]
            is_base = False
        if warn and (task_id, object) not in self._object_types:
            warnings.warn("Unable to find type for object {} in task {}".format(object, task_id))
            return False, -1
        return is_base, self._object_types[(task_id, object)]

    def is_ambiguous(self, task_id: int, object_id: int):
        """
        Determine whether there are multiple instances of the same object type in the task
        :param task_id: the task ID
        :param object_id: the object ID
        :return: whether there are multiple of the same object types
        """
        type = self.get_type(task_id, object_id)[1]
        for (task, object), t  in self._to_base_objects.items():
            if task == task_id and object != object_id and type == t:
                return True
        return False


    def find_type(self, profile: EffectProfile) -> int:
        """
        Check if the effect profile matches an existing one.
        :param profile: the effect profile
        :return: a unique index of the matching profile, or -1 if no match was found
        """
        for type, effect in self._types.items():
            if profile.equals(effect, return_exact=False):
                return type
        return -1
