#!/usr/bin/env bash

echo "###########################"
echo "### GIT CONFIGURATION ###"
echo "###########################"

git config --global user.email "ovinibortoletto@gmail.com"
git config --global user.name "Vinicius Bortoletto"


ssh-keygen -t ed25519 -C "seuemail@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub

