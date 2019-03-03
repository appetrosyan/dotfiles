#!/bin/sh

scripts="$HOME/.config/sxhkd/Scripts/Layouts"
choice=$(ls $scripts/*.layout | xargs -n 1 basename | rofi -dmenu -auto-select)  
layout=$scripts/$choice
$layout
