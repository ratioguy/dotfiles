#!/bin/sh

# Simple updating script because I am lazy.
#sudo apt update && sudo apt upgrade
sudo pacman -Syu
flatpak update
yt-dlp --update
cd ~/.local/git/build/clipmenu
git pull
sudo make install
cd ..
cd newsraft
git pull
sudo make install
cd ..
cd xautocfg
git pull
sudo make install 
nvim +PlugUpdate
# flatpak run it.mijorus.gearlever

# Nextvi not auto-updated with it
