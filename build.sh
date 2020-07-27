#!/bin/bash

set -e

pushd sofiaml/src/
make
mv sofia-ml ~/bin/ #or somewhere on the path
popd

venv="venv"

echo "making $venv"

virtualenv $venv
source $venv/bin/activate

echo "installing sksofia"
pip install -e .
