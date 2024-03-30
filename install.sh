#!/usr/bin/env bash
source ./.functions.sh

############
### APPS ###
############

echo_doing 'Installing Flatpak'
yay -S --noconfirm flatpak
echo_done

echo_doing 'Installing Brave Browser'
yay -S --noconfirm brave-bin
echo_done

echo_doing 'Installing VSCode'
yay -S --noconfirm visual-studio-code-bin
echo_done

echo_doing 'Installing Intellij'
yay -S --noconfirm intellij-idea-community-edition
echo_done

echo_doing 'Installing Nodejs'
yay -S --noconfirm nodejs
echo_done

echo_doing 'Installing NPM'
yay -S --noconfirm npm
echo_done

echo_doing 'Installing JDK'
yay -S --noconfirm jdk17-openjdk
echo_done

echo_doing 'Installing Maven'
yay -S --noconfirm maven
echo_done

echo_doing 'Installing MySQL Workbench'
yay -S --noconfirm mysql-workbench
sudo cp code_editor.xml /usr/share/mysql-workbench/data/
echo_done

echo_doing 'Installing Beekeeper'
yay -S --noconfirm beekeeper-studio-bin
echo_done

echo_doing 'Installing Redshift'
yay -S --noconfirm redshift-gtk-git
echo_done

echo_doing 'Installing Autorandr'
yay -S --noconfirm autorandr
echo_done

echo_doing 'Installing fonts'
yay -S --noconfirm ttf-fira-code \
ttf-meslo-nerd-font-powerlevel10k
echo_done

echo_doing 'Installing Xtreme Download Manager'
yay -S --noconfirm xdman-beta
echo_done

echo_doing 'Installing Flameshot'
yay -S --noconfirm flameshot
echo_done

echo_doing 'Installing Xcolor'
yay -S --noconfirm xcolor
echo_done

echo_doing 'Installing qBittorrent'
yay -S --noconfirm qbittorrent
echo_done

echo_doing 'Installing Stremio'
yay -S --noconfirm stremio
echo_done

echo_doing 'Installing Stremio'
yay -S --noconfirm docker docker-compose
echo_done

echo_doing 'Installing Discord'
yay -S --noconfirm discord
echo_done

echo_doing 'Installing yt-dlp'
yay -S --noconfirm yt-dlp
echo_done

echo_doing 'Installing Postman'
yay -S --noconfirm postman-bin
echo_done

########################
### BLUETOOTH CONFIG ###
########################

echo_doing 'Configuring bluetooth'

yay -S --noconfirm blueman
sudo systemctl enable bluetooth
cp policy-bluetooth ~/home/vini/.local/state/wireplumber/policy-bluetooth

echo_done

###################
### ROFI CONFIG ###
###################

echo_doing 'Installing Rofi puglins'

yay -S --noconfirm rofi-power-menu

echo_done

##################
### FIX EMOJIS ###
##################

echo_doing 'Fixing emojis'

yay -S --noconfirm ttf-twemoji
mkdir ~/.config/fontconfig
cp fonts.conf ~/.config/fontconfig

echo_done

#######################
### QT6 AND KVANTUM ###
#######################

echo_doing 'Install Qt6 and Kvantum'

yay -S --noconfirm qt6ct kvantum
# echo 'QT_QPA_PLATFORMTHEME=qt6ct' | sudo tee -a /etc/environment
# echo 'QT_STYLE_OVERRIDE=kvantum' | sudo tee -a /etc/environment
cp enenvironment /etc/environment
cp qt6ct.conf ~/.config/qt6ct
cp kvantum.kvconfig ~/.config/Kvantum

echo_done

###########
### GIT ###
###########

echo_doing 'Installing Github CLI'

git config --global user.email "ovinibortoletto@gmail.com"
git config --global user.name "Vinicius Bortoletto"

yay -S --noconfirm github-cli
gh auth login

echo_done

#####################################
### ALLOW KDE CONNECT IN FIREWALL ###
#####################################

sudo firewall-cmd --permanent --zone=public --add-service=kdeconnect
sudo firewall-cmd --reload

####################
### OTHER CONFIG ###
####################

echo_doing 'Copying I3 settings'
cp -r .config/ ~/
echo_done

echo_doing 'Copying backgrounds folders'
cp -r backgrounds ~/Pictures
echo_done

echo_doing 'Copying terminal files'
cp -r terminalrc ~/.config/xfce4/terminal/ 
echo_done

echo_doing 'Removing Firefox'
yay -R --noconfirm firefox
echo_done

echo_doing 'Copying monitor file'
cp monitor.sh ~/.screenlayout
echo_done

reboot_prompt