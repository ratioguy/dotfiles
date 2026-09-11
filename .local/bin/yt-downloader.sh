#!/bin/sh

# User Input
echo "Enter the download link:"
read link

echo "Enter the resolution (720p or 1080p):"
read resolution

# Actions
if [ $resolution = 720 ] ||  [ $resolution = 720p ]; then
	yt-dlp $link -P ~/Downloads/Youtube/ --write-auto-sub --sub-lang "en-*" --embed-subs --merge-output-format mp4 -f 'bestvideo[height<=?720]+bestaudio/best' --sponsorblock-remove sponsor,intro,outro,interaction,selfpromo,preview --embed-subs -o '%(title)s.%(ext)s' --exec 'setsid -f mpv --no-terminal $link'
elif [ $resolution = 1080 ] ||  [ $resolution = 1080p ]; then
	yt-dlp $link -P ~/Downloads/Youtube/ --write-auto-sub --sub-lang "en-*" --embed-subs --merge-output-format mp4 -f 'bestvideo[height<=?1080]+bestaudio/best' --sponsorblock-remove sponsor,intro,outro,interaction,selfpromo,preview --embed-subs -o '%(title)s.%(ext)s' --exec 'setsid -f mpv --no-terminal $link'

else
	clear
	echo "Invlaid Resolution."
	sh ~/.local/bin/yt-downloader.sh
fi
