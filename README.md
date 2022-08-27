### I3wm EndeavourOS Dotfiles

## Use scripts to install everything

# How to change LightDM background
https://wiki.archlinux.org/title/LightDM#Changing_background_images/colors

# Add password feedback in terminal
cd /etc/ && cp sudoers sudoers.bak && EDITOR=nano visudo
env_reset,pwfeedback