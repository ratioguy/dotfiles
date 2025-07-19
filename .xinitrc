#!/bin/sh
picom &
sh ~/.local/bin/monitor.sh
sxbar &
redshift -O 5500
xwallpaper --zoom ~/Pictures/wallpapers/White-Mountain.jpg
syncthing --no-browser &
ollama serve & 
mpd ; mpc random on  ; mpc load Based\ Music &
mpDris2 &
playerctld &
killall pipewire ; pipewire &
xset r rate 250 50
dunst &
blueman-applet &
clipmenud &
exec sxwm
