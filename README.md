### Apps that will be installed

```
yay -S visual-studio-code-bin nvm slack-desktop zoom vlc redshift-gtk autorandr brave-bin discord spotify qbittorrent-qt5 ttf-fira-code ttf-meslo-nerd-font-powerlevel10k qt5ct qt5-stylepuglins blueman xdman 
```

- VSCode
- Brave
- NVM
- Slack
- Zoom
- Discord
- Spotify
- VLC
- Redshift-GTK
- Autorandr
- qBittorrent
- Fonts
    - Fira Code
    - Nerd Font Powerlevel10k
- Qt5
- Blueman
- Xtreme Download Manager

### Fix Qt5 themes

```
sudo nano /etc/environment

Uncomment
QT_QPA_PLATFORMTHEME=qt5ct
```
