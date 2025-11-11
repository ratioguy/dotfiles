#!/bin/sh

echo "Enter the Link:"
read link
yt-dlp $link  --no-playlist -f m4a -o '%(title)s.%(ext)s' -P ~/Music/Based\ Music 
sh ~/.local/bin/playlist-gen.sh
