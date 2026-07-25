#!/bin/bash

# Change if different username
export GRIM_DEFAULT_DIR="/home/jim/Pictures/Screenshots"

case $1 in
    select)
	# Take screenshot at selection
	grim -g "$(slurp)" && notify-send -t 2000 'Screenshot Taken.'
	;;
    screen)
	# Take screenshot of monitor
	grim && notify-send -t 2000 'Screenshot Taken.'
	;;
esac
