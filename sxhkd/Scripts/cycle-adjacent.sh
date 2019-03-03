#!/bin/bash

setxkbmap us
declare -A ACTIONS
ACTIONS=(
    # ["Monocle"]="bspc desktop -l next"
    ["Fullscreen"]="bspc node -t fullscreen"
    ["Tiled"]="bspc node -t tiled"
    ["Stacked"]="bspc node -t floating"
	)

for K in "${!ACTIONS[@]}";
do
    options="$K\n$options"
done

options=$(echo -e "$options"  | sed '/^$/d')
actions=$(echo -e "$options" | rofi -dmenu -i -matching fuzzy -auto-select )
echo "${ACTIONS[$actions]}"
