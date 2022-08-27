#!/usr/bin/env bash

echo "##############################"
echo "### TERMINAL CUSMONIZATION ###"
echo "##############################"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

~/.fzf/install

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/supercrabtree/k ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/k

cp .zshrc ~/