import inspect
import sys
from collections import defaultdict
from numbers import Number
import time

import multiprocessing
import os
import shutil
import warnings
from typing import Callable, List, Iterable, Any, Optional, Union

import pandas as pd
import numpy as np
import pickle
import textwrap
import matplotlib.pyplot as plt

__author__ = 'Steve James and George Konidaris'

from s2s.env.s2s_env import S2SEnv
from s2s.estimators.estimators import StateDensityEstimator
from s2s.union_find import UnionFind


def show_symbol(env: S2SEnv, x: StateDensityEstimator):
    im = env.render_states(x.sample(100), mask=x.mask, masked=True)
    plt.imshow(im)
    plt.show()


def compute_mask(x: np.ndarray, y: np.ndarray) -> np.ndarray:
    """
    The above are arrays of object features, so we must check them individually
    :param x: a state
    :param y: another state
    :return: the indices of objects that have changed
    """

    mask = list()
    for i, (a, b) in enumerate(zip(x, y)):
        if not np.array_equal(a, b):
            mask.append(i)
    return np.array(mask)


def if_not_none(value: Any, default_value: Any) -> Any:
    """
    If the value is not none, returns it. Otherwise, returns the default value
    :param value: teh value to check
    :param default_value: the default value
    """
    return value if value is not None else default_value


def now():
    """
    Return the current time in milliseconds
    """
    return int(round(time.time() * 1000))


def indent(x: Any, count: int = 1) -> str:
    """
    Indent an object
    :param x: the object
    :param count: the number of tab spaces
    """
    return textwrap.indent(str(x), '\t' * count)


def select_rows(data: pd.DataFrame, indices: Iterable, reset_index=True) -> pd.DataFrame:
    """
    Select a set of rows from a data frame
    :param data: the data frame
    :param indices: the row indices
    :param reset_index: whether the indices should be reset
    :return: the subframe
    """""
    frame = data.loc[indices]
    if reset_index:
        return frame.reset_index(drop=True)
    return frame

def indent(x: Any, count: int = 1) -> str:
    """
    Indent an object
    :param x: the object
    :param count: the number of tab spaces
    """
    return textwrap.indent(str(x), '\t' * count)

def run_parallel(functions: List[Callable], serial=False):
    """
    Run the list of function in parallel and return the results in a list
    :param functions: the functions to execute
    :return: a list of results
    """

    if serial or len(functions) == 1:
        return [f() for f in functions]

    n_procs = len(functions)
    pool = multiprocessing.Pool(processes=n_procs)
    processes = [pool.apply_async(functions[i]) for i in range(n_procs)]
    return [p.get() for p in processes]


def is_single_sample(data: np.ndarray) -> bool:
    """
    Determine if the array is a single sample of data
    :param data: the array
    """
    if len(data.shape) == 1:
        return True
    return data.shape[0] == 1


def range_without(start, end, *skips):
    """
    Create a range while omitting certain values
    :param start: the start of the range
    :param end: the end of the range (excluded)
    :param skips: the numbers to skip
    """
    skip = set(skips)
    return [x for x in range(start, end) if x not in skip]


def flatten(data: Union[pd.Series, np.ndarray], mask: Optional[List[int]] = None):
    if mask is None:
        if isinstance(data, pd.Series):
            mask = list(range(data.values[0].shape[0]))
        else:
            mask = list(range(data[0].shape[0]))

    # TODO: super fragile!
    if isinstance(data, np.ndarray):
        return np.array([np.concatenate(sample[mask]).ravel() for sample in data])
    if isinstance(data[0].dtype, Number) or data[0].dtype == np.float64 or data[0].dtype == np.float32:
        return np.array([sample[mask] for sample in data])
    return np.array([np.concatenate(sample[mask]).ravel() for sample in data])


def pd2np(data: pd.Series, make_rectangle=False):
    """
    Convert a Pandas series of arrays to a numpy 2D array
    :param data: the series
    :return: a numpy 2D array
    """
    if make_rectangle:
        return make_2d(data.values)
    return np.array([np.asfarray(x) for x in data.values])


def make_2d(data: np.ndarray):
    """
    Convert an array of arrays with only one dimension to its two dimensional representation.
    """
    return np.array([x for x in data])


def show(data, verbose):
    """
    Convenience method to display data, if verbose is set to true
    :param data: the information to print
    :param verbose: the mode
    """
    if verbose:
        print(data)


def save(object, filename=None, binary=True, use_dill=False):
    """
    Convenience method for saving object to file without risking wrong mode overwrites
    :param binary: whether to save as a binary file
    :param object: the object to pickle
    :param filename: the filename
    """
    if filename is None:
        warnings.warn("No filename specified, saving to temp.pkl...")
        filename = '../temp.pkl'
    mode = 'wb' if binary else 'w'
    with open(filename, mode) as file:
        if binary:
            pickle.dump(object, file)
        else:
            file.write(str(object))
    return filename





def load(filename=None, binary=True, use_dill=False):
    """
    Convenience method for loading object from file without risking wrong mode overwrites
    :param binary: whether to load as a binary file
    :param filename: the filename
    """
    if filename is None:
        warnings.warn("No filename specified, loading from temp.pkl...")
        filename = '../temp.pkl'
    mode = 'rb' if binary else 'r'
    with open(filename, mode) as file:
        return pickle.load(file)

def get_start_state(transition_data):
    initial_states = pd2np(transition_data.groupby('episode').nth(0)['state'], make_rectangle=True)
    return initial_states[1:2] # just take the first!


def get_dir_name(file):
    """
    Get the directory of the given file
    :param file: the file
    :return: the file's directory
    """
    return os.path.dirname(os.path.realpath(file))


def get_sibling_file(file,
                     sibling_name):
    """
    Get the full path to a file within the same directory as another file
    :param file: the file whose directory we care about
    :param sibling_name: the name of the file we're looking for
    :return: a full path to the sibling file
    """
    return make_path(get_dir_name(file), sibling_name)


def make_path(root,
              *args) -> str:
    """
    Creates a path from the given parameters
    :param root: the root of the path
    :param args: the elements of the path
    :return: a string, each element separated by a forward slash.
    """
    path = root
    if path.endswith('/'):
        path = path[0:-1]
    for element in args:
        if not isinstance(element, str):
            element = str(element)
        if element[0] != '/':
            path += '/'
        path += element
    return path


def exists(path):
    return os.path.exists(path)


def make_dir(path,
             clean=True):
    """
    Create a new directory (create the entire tree if necessary)
    :param path: the directory's path
    :param clean: whether the directory should made empty (if it already exists)
    """

    exists = os.path.exists(path)
    if not exists:
        # print("Directory missing, creating: " + path)
        os.makedirs(path)
    elif clean:
        # Delete directory
        has_files = False
        for dirpath, dirnames, files in os.walk(path):
            if files:
                has_files = True
            break
        # if has_files:
        #     print("NOT DELETING!!!! TOO DANGEROUS!")
        #     exit(1)
        shutil.rmtree(path)
        os.makedirs(path)


def copy_directory(source, dest):
    """
    Copy a directory tree from source to a destination. The directory must not exist in the destination
    :param source:
    :param dest:
    """
    if os.path.exists(dest):
        raise ValueError(dest + " already exists!")
    shutil.copytree(source, dest)


def merge(input_files, output_file):
    """
    Merge a list of files into one single file
    :param input_files: the list of input files
    :param output_file: the output file
    """
    with open(output_file, 'w') as wfd:
        for f in input_files:
            with open(f, 'r') as fd:
                shutil.copyfileobj(fd, wfd)


def files_in_dir(directory):
    """
    Generate the files inside a directory tree
    :param directory: the directory tree to traverse
    :return: the path and filename of files within the tree
    """

    for dirpath, dirnames, filenames in os.walk(directory):
        for f in filenames:
            file = make_path(dirpath, f)
            if os.path.isfile(file):
                yield dirpath, f


def loadable(func):
    def wrapper(filename, binary=True, use_dill=False, *args, **kwargs):
        if exists(filename):
            ret = load(filename, binary=binary, use_dill=use_dill)
        else:
            ret = func(*args, **kwargs)
            save(ret, filename, binary=binary, use_dill=use_dill)
        return ret

    return wrapper


# From withhacks: https://stackoverflow.com/questions/12594148/skipping-execution-of-with-block
class Loadable:
    """
    A context manager that will allow us to compute some result if it does not exist, but otherwise load it from file
    """

    def __init__(self, filepath: str, force_redo=True, *args):
        """

        :param filepath:
        :param force_redo:
        :param args:
        """
        self._filepath = filepath
        self._force_redo = force_redo
        self._args = args

    def __enter__(self):
        if self._force_redo or not exists(self._filepath):
            sys.settrace(lambda *args, **keys: None)
            frame = inspect.currentframe(1)
            frame.f_trace = self.trace

    def trace(self, frame, event, arg):
        raise

    def __exit__(self, type, value, traceback):
        return True


class IndexLink:
    """
    This is a way of associating two indices together. The association is two-way, and each index can be associated
    with many others.
    """

    def __init__(self):
        self._vals = defaultdict(set)

    def add(self, a: int, b: int):
        """
        Associate one index with another
        """
        self._vals[a].add(b)
        self._vals[b].add(a)

    def reduce(self, union_find: UnionFind):
        """
        Modify all the indices in place, given that they may have been unioned with others
        """
        temp = defaultdict(set)
        for k, vals in self._vals.items():
            temp[union_find[k]] = {union_find[x] for x in vals}
        self._vals = temp

    def __getitem__(self, index):
        return self._vals[index]