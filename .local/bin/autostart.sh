#!/bin/sh
gammastep -c /home/jim/.config/gammastep/gammastep.conf &
syncthing --no-browser 2>&1 >> /dev/null &
playerctld 2>&1 >> /dev/null &
mpd 2&>1 >> /dev/null &
wl-paste --watch cliphist store 2>&1 >> /dev/null &
wl-clip-persist --clipboard regular &
swaybg -m fill -i ~/Pictures/wallpapers/rock.jxl 2>&1 >> /dev/null &
foot --server &
killall easyeffects &

# Screensharing
export XDG_CURRENT_DESKTOP=sway
export XDG_SESSION_TYPE=wayland
dbus-update-activation-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=sway
rc-service --user xdg-desktop-portal restart
