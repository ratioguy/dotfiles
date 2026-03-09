#!/bin/bash

case $1 in
    up)
	# Up the brightness (+ 5%)
	brightnessctl -d intel_backlight set 5%+ 
	notify-send Brightness $(brightnessctl  | grep % | awk '{print $4}' | sed 's/[()]//g')
	;;
    down)
	# Lower the brightness (+ 5%)
	brightnessctl -d intel_backlight set 5%- ; notify-send Brightness $(brightnessctl  | grep % | awk '{print $4}' | sed 's/[()]//g')
	;;
esac
