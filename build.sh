#!/bin/bash

set -e

pushd sofiaml/src/
make
mv sofia-ml ~/bin/ #or somewhere on the path
popd

venv="venv"

echo "making $venv"

echo "installing sksofia"
$venv/bin/pip install -e .
