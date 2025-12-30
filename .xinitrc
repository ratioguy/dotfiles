#!/bin/sh

picom &
sh ~/.local/bin/monitor.sh
redshift -O 5500
xwallpaper --zoom ~/Pictures/wallpapers/White-Mountain.jpg
syncthing --no-browser >> /dev/null &
mpd-mpris &
playerctld &
xset r rate 250 50
dunst &
blueman-applet &
clipmenud &
~/.local/bin/bar.sh &
syndaemon -i 0.5 &
export XDG_CURRENT_DESKTOP=dwm
exec dwm
