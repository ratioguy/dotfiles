#!/bin/sh

# User Input
echo "Enter disk action: (mount or unmount)"
read action
lsblk
echo "Enter disk to use:"
read disk

# Actions
if [ $action = mount ]; then
	udisksctl mount -b /dev/$disk
elif [ "$action" = "unmount" ] || [ "$action" = "umount" ]; then
	udisksctl unmount -b /dev/$disk
	udisksctl power-off -b /dev/$disk 
else
	echo "Invlaid Action."
fi
