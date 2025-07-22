#!/bin/sh

# Test sxwm in current wm
Xephyr -br -ac -noreset -screen 1600x900 :2 &\
sleep 1
DISPLAY=:2 sxwm
