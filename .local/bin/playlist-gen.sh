#!/bin/sh

# Make a Playlist automatically
cd ~/Music/
fdfind m4a > ~/Music/Playlists/Based\ Music.m3u
fdfind mp3 >> ~/Music/Playlists/Based\ Music.m3u
fdfind flac >> ~/Music/Playlists/Based\ Music.m3u
