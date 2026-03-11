#!/bin/sh

fastcompmgr &
sh ~/.local/bin/monitor.sh
xautocfg &
redshift -O 5500
xwallpaper --zoom ~/Pictures/wallpapers/White-Mountain.jpg
syncthing --no-browser >> /dev/null &
mpd &
mpDris2 &
playerctld &
dunst &
sh ~/.local/bin/middle-click.sh &
clipmenud &
slstatus &
exec dwm
