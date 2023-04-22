#!/usr/bin/env bash
source ./.functions.sh

echo_doing 'Copying MPV settings'
cp -r .config/mpv ~/
echo_done

echo_doing 'Copying I3 settings'
cp -r .config/ ~/
echo_done

echo_doing 'Copying backgrounds folders'
cp -r backgrounds ~/Pictures
echo_done

