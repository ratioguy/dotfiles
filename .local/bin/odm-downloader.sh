#!/bin/sh

# Change to case
# Add downloading folder.

[ -d ~/Downloads/odm/.continue-file ] || mkdir -p ~/Downloads/odm/.continue-file 2> /dev/null


echo "Welcome to the Opinionated Download Manager (ODM)\n"
echo "would you like to do? download (d) or continue (c) clear (cc)"
read opt


if [ $opt = d ]; then
	echo "Enter the download link:"
	read link
	echo "Enter the download name:"
	read name
	echo $link > $HOME/Downloads/odm/.continue-file/"$name"
	wget --show-progress -P "$HOME/Downloads/odm/" "$link" && rm "$HOME/Downloads/odm/.continue-file/$name"


elif [ $opt = c ]; then
	ls ~/Downloads/odm/.continue-file
	echo "Enter the continue file name:"
	read continuefile
	wget -c --show-progress -P "$HOME/Downloads/odm/" "$link" && rm "$HOME/Downloads/odm/.continue-file/$name"

elif [ $opt = cc ]; then
	echo "Are you sure you want to clean your continue files? (y/n)"
	read answer
	if [ $answer = y ]; then
		rm ~/Downloads/odm/.continue-file/*
		echo "cleared."
	elif [ $answer = n ]; then
		echo "exiting."
	else
		echo "invalid answer, exiting."
	fi


else
	# Invlaid answer
	clear
	echo "Invlaid answer."
	sh ~/.local/bin/odm-downloader.sh
fi
