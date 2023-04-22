#!/usr/bin/env bash
source ./.functions.sh

echo_doing 'Installing VSCode'
yay -S visual-studio-code-bin
echo_done

echo_doing 'Installing Zoom'
yay -S zoom
echo_done

echo_doing 'Installing Redshift'
yay -S redshift
echo_done

echo_doing 'Installing Autorandr'
yay -S autorandr
echo_done

echo_doing 'Installing Transmission'
yay -S transmission-gtk
echo_done

echo_doing 'Installing Fira Code and Meslo Nerd fonts'
yay -S ttf-fira-code
yay -S ttf-meslo-nerd-font-powerlevel10k
echo_done

echo_doing 'Installing XDMan'
yay -S xdman
echo_done

echo_doing 'Installing Flameshot'
yay -S flameshot
echo_done

echo_doing 'Installing XColor'
yay -S xcolor
echo_done

reboot
