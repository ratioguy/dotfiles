#!/bin/sh

# Input
echo "Enter the link:"
read link
echo "Download the playlist? (yes or no):"
read answer

if [ $answer = yes ]; then
	# Download playlists
	yt-dlp $link  -f m4a -o '%(title)s.%(ext)s' -P ~/Music/ 
	find ~/Music/ -maxdepth 1 -type f | sed -e 's/$/"/' -e 's/^/"/' | xargs picard
	sh ~/.local/bin/playlist-gen.sh
	clear
elif [ $answer = no ]; then
	# Don't download playlists
	yt-dlp $link  --no-playlist -f m4a -o '%(title)s.%(ext)s' -P ~/Music/ 
	find ~/Music/ -maxdepth 1 -type f | sed -e 's/$/"/' -e 's/^/"/' | xargs picard
	sh ~/.local/bin/playlist-gen.sh
	clear
else
	# Invlaid answer
	echo "Invlaid answer."
	sh ~/.local/bin/music-downloader.sh
fi
