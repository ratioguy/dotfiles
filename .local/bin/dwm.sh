#!/bin/sh

# Test dwm in current wm
Xephyr -br -ac -noreset -screen 1600x900 :2 &\
sleep 1
DISPLAY=:2 dwm
