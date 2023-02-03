from collections import defaultdict

import numpy as np


if __name__ == '__main__':

    with open('output-spatial/eval_20230203.txt' , 'r') as f:

        n = -1
        n_trans = -1
        xs = set()
        vals = defaultdict(list)
        for i, line in enumerate(f):

            if i % 3 == 0:
                n, n_trans = map(int, line.split(' '))
            elif i % 3 == 1:
                found = line.strip() == 'True'
                vals[n_trans].append(1 if found else 0)
                xs.add(n_trans)

        xs = list(xs)
        xs.sort()
        means = list()
        vars = list()
        for n in xs:
            means.append(np.mean(vals[n]))

            temp = np.std(vals[n], ddof=1) / np.sqrt(np.size(vals[n]))
            vars.append(temp)

            # vars.append(np.var(vals[n]))

        xs = np.array(xs)
        means = np.array(means)
        vars = np.array(vars)

        import matplotlib.pyplot as plt
        plt.plot(xs, means)
        plt.fill_between(xs, means - vars, means + vars,alpha=0.5)
        plt.show()

