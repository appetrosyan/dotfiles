#!/bin/sh

type menu >/dev/null || alias menu="rofi -dmenu -font \"Fira Code 14\" -i"
setxkbmap us
ans=$(printf 'Reload\nExit\nReboot\nPoweroff\nSuspend' | menu -p "Session management" -matching fuzzy -auto-select -a 0-1 -u 3)
case "$ans" in
    Reload) pkill -USR1 -x sxhkd;;
    Exit) bspc quit;;
    Reboot) systemctl reboot;;
    Poweroff) systemctl poweroff;;
    Suspend) systemctl suspend;;
esac


