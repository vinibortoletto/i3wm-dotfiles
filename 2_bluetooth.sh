#!/usr/bin/env bash
source ./.functions.sh

echo_doing 'Configuring bluetooth'

yay -S blueman
sudo systemctl enable bluetooth

echo_done

reboot
