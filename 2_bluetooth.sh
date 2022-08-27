#!/usr/bin/env bash

echo "###############################"
echo "### BLUETOOTH CONFIGURATION ###"
echo "###############################"

yay -S blueman
sudo systemctl enable bluetooth