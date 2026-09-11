#!/bin/sh

# Make a Playlist automatically
cd ~/Music/
fd .m4a > ~/Music/Playlists/Based\ Music.m3u
fd .mp3 >> ~/Music/Playlists/Based\ Music.m3u
fd .flac >> ~/Music/Playlists/Based\ Music.m3u
fd .wav >> ~/Music/Playlists/Based\ Music.m3u
fd .opus >> ~/Music/Playlists/Based\ Music.m3u
