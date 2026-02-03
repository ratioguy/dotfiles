#!/bin/sh

IN=$(xrandr | grep "eDP" | grep " connected" | sed -e "s/\([A-Z0-9]\+\) connected.*/\1/")
EXT=$(xrandr | grep "DP-2" | grep " connected" | sed -e "s/\([A-Z0-9]\+\) connected.*/\1/")

if (xrandr | grep "$EXT disconnected"); then
	xrandr --output $EXT --off --output $IN --auto &
	xset r rate 250 50 &
	xwallpaper --zoom ~/Pictures/wallpapers/White-Mountain.jpg &
else
	xrandr --output $IN --off --output $EXT --auto
	xset r rate 250 50 &
	xwallpaper --zoom ~/Pictures/wallpapers/White-Mountain.jpg &

fi
