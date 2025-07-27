#/bin/sh

status () { 
	echo -n " $(cat /sys/class/power_supply/BAT0/capacity ; cat /sys/class/power_supply/BAT1/capacity ) | $(date '+%B %d, %Y %I:%M %p')"
}

while :; do
	
	xsetroot -name "$(status)"
	sleep 1

done
