#!/bin/sh

# User Input
echo "Enter disk action:"
read action
echo "Enter disk to use:"
read disk

# Actions
if [ $action = mount ]; then
	udisksctl $action -b /dev/$disk
elif [ $action = unmount ]; then
	udisksctl $action -b /dev/$disk
	udisksctl power-off -b /dev/$disk 
else
	echo "Invlaid Action."
fi
