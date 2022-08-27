#!/usr/bin/env bash

echo "#################################"
echo "### INSTALLING NVM AND NODEJS ###"
echo "#################################"

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR=$HOME/.nvm;
source $NVM_DIR/nvm.sh;
nvm i 16