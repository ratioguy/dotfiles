#!/bin/sh
gammastep > /dev/null 2>&1 &
syncthing --no-browser > /dev/null 2>&1 &
playerctld > /dev/null 2>&1 &
mpd > /dev/null 2>&1 &
mpd-mpris > /dev/null 2>&1 &
wl-paste --watch cliphist store > /dev/null 2>&1 &
wl-clip-persist --clipboard regular &
swaybg -m fill -i ~/Pictures/wallpapers/rock.jxl > /dev/null 2>&1 &
foot --server > /dev/null 2>&1 &
killall easyeffects &

# Screensharing
export XDG_CURRENT_DESKTOP=sway
export XDG_SESSION_TYPE=wayland
dbus-update-activation-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=sway
rc-service --user xdg-desktop-portal restart
