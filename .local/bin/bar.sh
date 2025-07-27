#/bin/sh

status () { 
	echo -n " $(acpi | awk '{print $4}' | sed s/,//) | $(date '+%B %d, %Y %I:%M %p')"
}

while :; do
	
	xsetroot -name "$(status)"
	sleep 1

done
