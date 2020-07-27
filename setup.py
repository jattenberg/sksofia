from setuptools import setup

required_libraries = ["numpy", "scikit-learn", "jupyter", "pandas"]


setup(
    name="sksofia",
    version="0.1",
    description="a scikit learn wrapper for sofiaml",
    author="jattenberg",
    author_email="josh@attenberg.org",
    url="https://github.com/jattenberg/sksofia",
    license="MIT",
    packages=['sksofia'],
    zip_safe=False,
    install_requires=required_libraries,
)