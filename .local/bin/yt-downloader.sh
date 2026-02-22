#!/bin/sh

# User Input
echo "Enter the Download Link:"
read link

echo "Enter the resolution (720p or 1080p):"
read resolution

# Actions
if [ $resolution = 720 ]; then
	yt-dlp $link -P ~/Downloads/Youtube/ --merge-output-format mp4 -f 'bestvideo[height<=?720]+bestaudio/best' --sponsorblock-remove sponsor,intro,outro,interaction,selfpromo,preview -o '%(title)s.%(ext)s' --exec 'setsid -f mpv --no-terminal $link'
elif [ $resolution = 1080 ]; then
	yt-dlp $link -P ~/Downloads/Youtube/ --merge-output-format mp4 -f 'bestvideo[height<=?1080]+bestaudio/best' --sponsorblock-remove sponsor,intro,outro,interaction,selfpromo,preview -o '%(title)s.%(ext)s' --exec 'setsid -f mpv --no-terminal $link'

else
	echo "Invlaid Resolution."
fi
