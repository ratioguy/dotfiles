#!/bin/sh

fastcompmgr &
sh ~/.local/bin/monitor.sh
xautocfg &
redshift &
killall sycthing ; syncthing --no-browser >> /dev/null &
mpd &
mpDris2 &
playerctld &
dunst &
sh ~/.local/bin/middle-click.sh &
clipmenud &
slstatus &
exec dwm
