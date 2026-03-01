#!/bin/sh

IN=$(xrandr | grep "eDP" | grep " connected" | sed -e "s/\([A-Z0-9]\+\) connected.*/\1/")
EXT=$(xrandr | grep "DP-2" | grep " connected" | sed -e "s/\([A-Z0-9]\+\) connected.*/\1/")

if ( wlr-randr | grep DP-2); then
	wlr-randr --output eDP-1 --off 
else
	wlr-randr  --output eDP-1 --off
fi
