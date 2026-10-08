#!/bin/sh

echo $(wl-paste) | grep -iq -e "https://www.youtube.com" -e "https://youtu.be/" -e "https://music.youtube.com/" && notify-send -t 2000 Launching... && setsid -f mpv $(wl-paste)
