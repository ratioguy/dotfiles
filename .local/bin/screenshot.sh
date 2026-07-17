#!/bin/bash

# Change if different username
export GRIM_DEFAULT_DIR="/home/jim/Pictures/Screenshots"

case $1 in
    select)
	# Take screenshot at selection
	grim -g "$(slurp)"
	;;
    screen)
	# Take screenshot of monitor
	grim
	;;
esac
