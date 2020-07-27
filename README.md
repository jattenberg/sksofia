# sksofia: a sklearn wrapper for sofia-ml

[`sofia-ml`](https://code.google.com/archive/p/sofia-ml/) was an interesting project released by [d. sculley](https://www.eecs.tufts.edu/~dsculley/), providing a number of variations on linear classification and regression models with some really cool twists that primarily boil down to how training examples are sampled. The specific motivation for packaging this up is my interest in "rank-based" optimization, targeting AUC, etc specifically.

The original library is in very highly optimized c++ and is extremely fast. This package provides a [scikit-learn classifier interface](https://scikit-learn.org/stable/modules/generated/sklearn.base.ClassifierMixin.html#sklearn.base.ClassifierMixin) to this excellent library. This functionality primarily works by writing  the sklearn numpy array inputs into temp files in the format that `sofia-ml` model consume. With `sofia-ml`,  trained, a model is written to disk, whereby this library slurps up the binary version which is stored internally as bytes. This allows for compatibility with normal python serialization. When subsequent classification is needed, this model representaton is written back out to a temp file. 

Usage:


Todo:
- put on pypi
- documenting usage, docstrings
