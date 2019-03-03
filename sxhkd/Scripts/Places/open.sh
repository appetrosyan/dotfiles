#!/bin/bash
setxkbmap us
fname=$(cat ~/.config/gtk-3.0/bookmarks ~/.config/sxhkd/Scripts/Places/places | rofi -dmenu -matching fuzzy -i -p "Choose a place" -font "Fira Code 12") && xdg-open $fname 
