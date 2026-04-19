#!/bin/sh

echo "Enter the launch link:"
read link
setsid -f mpv $link
