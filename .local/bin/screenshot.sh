#!/bin/bash
case $1 in
    select)
	# Take screenshot at selection
	scrot --select --line mode=edge --freeze ~/Pictures/Screenshots/Screenshot-%Y-%m-%d.png -e "notify-send -t 2000 'Screenshot Taken.'"
	;;
    focused)
	# Take screenshot at focused window
	scrot --focused --freeze ~/Pictures/Screenshots/Screenshot-%Y-%m-%d.png -e "notify-send -t 2000 'Screenshot Taken.'"
	;;
esac
