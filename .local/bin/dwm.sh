#!/bin/sh

# Test dwm in current wm
Xephyr -br -ac -noreset -screen 1600x900 :1 &\
sleep 1
DISPLAY=:1 dwm
