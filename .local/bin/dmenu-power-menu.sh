#!/usr/bin/env bash

function powermenu {
	options="Cancel\nShutdown\nRestart\nSleep\nLock"
	selected=$(echo $options | dmenu -i)
	if [[ $selected = "Shutdown" ]]; then
		loginctl poweroff
	elif [[ $selected = "Restart" ]]; then
		loginctl reboot
	elif [[ $selected = "Sleep" ]]; then
		loginctl suspend
	elif [[ $selected = "Lock" ]]; then
		slock
	elif [[ $selected = "Cancel" ]]; then
		return
	fi
}

powermenu
