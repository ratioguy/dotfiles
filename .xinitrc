#!/bin/sh

picom &
sh ~/.local/bin/monitor.sh
redshift -O 5500
xwallpaper --zoom ~/Pictures/wallpapers/White-Mountain.jpg
syncthing --no-browser >> /dev/null &
mpd-mpris &
playerctld &
dunst &
clipmenud &
~/.local/bin/bar.sh &
exec dwm
