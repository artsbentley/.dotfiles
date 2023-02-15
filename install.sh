#!/bin/bash

echo "Installing dotfiles"

" Check that all of our submodules work has been published before pushing the superproject
echo "Initializing submodule(s)"
git submodule update --init --recursive

source install/link.sh
