#!/bin/bash
result=$(echo -e "Shutdown\nReboot\nSuspend\nLock\nLogout" | dmenu -i -l 5 -p power)

if [[ "${result}" = "Shutdown" ]]; then
  systemctl poweroff
elif [[ "${result}" = "Reboot" ]]; then
  systemctl reboot
elif [[ "${result}" = "Suspend" ]]; then
  systemctl suspend
elif [[ "${result}" = "Lock" ]]; then
  #systemctl lock-session ${XDG_SESSION_ID-}
  slock
elif [[ "${result}" = "Logout" ]]; then
  #systemctl terminate-session ${XDG_SESSION_ID-}
  killall dwm
fi
