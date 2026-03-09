#!/bin/sh
sdcv -n -e --utf8-output --color "$@" 2>&1 | \
fold --width=$(tput cols) | \
less -RX
