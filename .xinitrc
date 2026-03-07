#!/bin/sh

picom &
sh ~/.local/bin/monitor.sh
xautocfg &
redshift -O 5500
xwallpaper --zoom ~/Pictures/wallpapers/White-Mountain.jpg
syncthing --no-browser >> /dev/null &
mpd &
mpd-mpris &
playerctld &
dunst &
clipmenud &
slstatus &
exec dwm
