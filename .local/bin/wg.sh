#!/bin/sh
config="$(fd -i --glob --type file wg-*.conf --base-directory ~ | fzf)"

if [ -n "$config" ]; then
	ip link show | grep wireguard | awk '{print $2}' | doas xargs -rn 1 ip link del
	doas wg-quick up $config
	echo "sudo wg-quick down $config" | wl-copy
	echo $config
else
	echo "Exiting..."
fi
