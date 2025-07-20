#!/bin/sh
pactl set-default-sink alsa_output.pci-0000_00_1f.3.analog-stereo ; sleep 0.2 ; notify-send -t 8000 Output: Headphones
