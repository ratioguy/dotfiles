#!/bin/bash
result=$(echo -e "Shutdown\nReboot\nSuspend\nLock\nLogout" | dmenu -i -l 5 -p power)

if [[ "${result}" = "Shutdown" ]]; then
  loginctl poweroff
elif [[ "${result}" = "Reboot" ]]; then
  loginctl reboot
elif [[ "${result}" = "Suspend" ]]; then
  loginctl suspend
elif [[ "${result}" = "Lock" ]]; then
  loginctl lock-session ${XDG_SESSION_ID-}
elif [[ "${result}" = "Logout" ]]; then
  loginctl terminate-session ${XDG_SESSION_ID-}
fi
