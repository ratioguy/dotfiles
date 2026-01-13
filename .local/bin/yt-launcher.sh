#!/bin/sh

echo "Enter the launch Link:"
read link
setsid -f mpv $link
