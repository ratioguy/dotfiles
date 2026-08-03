#!/bin/sh
# synchting --no-browser 2> /dev/null &
syncthing --no-browser &>/dev/null
dunst &>/dev/null
#redshift
playerctld &>/dev/null
wl-paste --watch cliphist store &>/dev/null
swaybg -m fill -i ~/Pictures/wallpapers/White-Mountain.jpg &>/dev/null
