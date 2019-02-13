#!/bin/bash 
fname=$(rofi -dmenu -matching fuzzy -i -p "Choose a place" -input ~/.config/sxhkd/Scripts/Places/places) && fname="${fname/#~/$HOME}" && xdg-open "$fname"
