#!/bin/sh

echo "Enter the Link:"
read link
setsid -f mpv $link
