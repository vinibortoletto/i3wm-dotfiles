#!/usr/bin/env bash

echo "#############################"
echo "### FIXING COLORED EMOJIS ###"
echo "##############################"

yay -S ttf-twemoji
mkdir ~/.config/fontconfig
cp fonts.conf ~/.config/fontconfig