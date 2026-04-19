#!/bin/sh

echo "Enter the link:"
read link
echo "Download the playlist? (yes or no):"
read answer

if [ $answer = yes ]; then
	yt-dlp $link  -f m4a -o '%(title)s.%(ext)s' -P ~/Music/ 
	sh ~/.local/bin/playlist-gen.sh
elif [ $answer = no ]; then
	yt-dlp $link  --no-playlist -f m4a -o '%(title)s.%(ext)s' -P ~/Music/ 
	sh ~/.local/bin/playlist-gen.sh
else
	clear
	echo "Invlaid answer."
	sh ~/.local/bin/music-downloader.sh
fi
