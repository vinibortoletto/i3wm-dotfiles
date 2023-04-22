#!/usr/bin/env bash
source ./.functions.sh

echo_doing 'Installing ZSH'

yay -S zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo_done
