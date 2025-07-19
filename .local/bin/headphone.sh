#!/bin/sh
pactl set-default-sink alsa_output.pci-0000_00_1f.3.analog-stereo && notify-send -t 8000 output: headphones
