#!/bin/sh
echo "Enter the Youtube Link:"
read link
setsid -f mpv $link
