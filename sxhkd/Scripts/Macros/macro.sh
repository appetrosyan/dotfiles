#!/bin/bash
setxkbmap us
declare -A SCRIPTS
SCRIPTS["Greet"]="~/.config/sxhkd/Scripts/Macros/greet.sh"
SCRIPTS["Phrase"]="~/.config/sxhkd/Scripts/Macros/phrase.sh"

for K in "${!SCRIPTS[@]}";
do
    options="$K\n$options"
done

options=$(echo -e "$options"  | sed '/^$/d')
scripts=$(echo -e "$options" | rofi -dmenu -i -matching fuzzy -auto-select -font "Fira Code 14")
exec ${SCRIPTS[$scripts]}
