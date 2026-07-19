#!/bin/bash

case $1 in
    speakers)
	# Switch to speakers
	pactl set-default-sink alsa_output.usb-HP_HP_Speaker_Bar-00.analog-stereo ; killall easyeffects ; notify-send -t 8000 'Output: External Speaker'
	;;
    headphones)
	# Switch to headphones
	pactl set-default-sink alsa_output.pci-0000_80_1f.3.analog-stereo ; setsid -f easyeffects --gapplication-service ; notify-send -t 8000 'Output: Headphones'
	;;
esac
