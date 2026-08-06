#!/bin/sh
gammastep -c /home/jim/.config/gammastep/gammastep.conf &
syncthing --no-browser &>/dev/null
dunst &>/dev/null
playerctld &>/dev/null
wl-paste --watch cliphist store &>/dev/null
wl-clip-persist --clipboard regular &
swaybg -m fill -i ~/Pictures/wallpapers/White-Mountain.jpg &>/dev/null
killall easyeffects &

# Screensharing
export XDG_CURRENT_DESKTOP=sway
systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=sway
systemctl --user restart xdg-desktop-portal
