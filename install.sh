#!/usr/bin/env bash

echo "#######################"
echo "### INSTALLING APPS ###"
echo "#######################"

yay -S visual-studio-code-bin
yay -S slack-desktop
yay -S zoom
yay -S redshift-gtk-git
yay -S autorandr
yay -S brave-bin
yay -S transmission-gtk
yay -S ttf-fira-code
yay -S ttf-meslo-nerd-font-powerlevel10k
yay -S xdman

echo "###############################"
echo "### BLUETOOTH CONFIGURATION ###"
echo "###############################"

yay -S blueman
sudo systemctl enable bluetooth

echo "##############################"
echo "### TERMINAL CUSMONIZATION ###"
echo "##############################"

yay -S zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/supercrabtree/k $ZSH_CUSTOM/plugins/k
cp .zshrc ~/

echo "#################################"
echo "### INSTALLING NVM AND NODEJS ###"
echo "#################################"

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm i 16

echo "###############################"
echo "### INSTALLING ROFI PLUGINS ###"
echo "################################"

yay -S rofi-power-menu

echo "#############################"
echo "### FIXING COLORED EMOJIS ###"
echo "##############################"

yay -S ttf-twemoji
mkdir ~/.config/fontconfig
cp fonts.conf ~/.config/fontconfig 

echo "###########################"
echo "### BASIC CONFIGURATION ###"
echo "###########################"

cp -r .config/mpv ~/
cp .config/i3/config ~/.config/i3
sudo cp -r backgrounds ~/usr/share/endeavouros/
