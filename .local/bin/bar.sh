#/bin/sh

status () { 
	echo -n " $(acpi | awk '{print $4}' 2>&1 | awk '6' | sed '$ s/,$//g') | $(date '+%B %d, %Y %I:%M %p')"
}

while :; do
	
	xsetroot -name "$(status)"
	sleep 1

done
