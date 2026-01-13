#!/bin/sh

echo "Enter the Download Link:"
read link
yt-dlp $link -P ~/Downloads/Youtube/ --merge-output-format mp4 -f 'bestvideo[height<=?720]+bestaudio/best' --sponsorblock-remove sponsor,intro,outro,interaction,selfpromo,preview --exec 'setsid -f mpv --no-terminal $link'
