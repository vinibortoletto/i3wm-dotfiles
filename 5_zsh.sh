#!/usr/bin/env bash

echo "######################"
echo "### INSTALLING ZSH ###"
echo "######################"

yay -S zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"