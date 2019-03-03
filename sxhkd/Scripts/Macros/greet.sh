#!/bin/bash

setxkbmap ru
tod_appropriate_greeting()
{
    time="$1"
    if (( "$time" >= 12 )) 
    then
	if (("$time" >= 18))
	then 
	    echo "Добрый Вечер"
	else
	    echo "Добрый День"
	fi
    else
      echo "Доброе утро"      
    fi
}
today=$(date +%H)
greeting=$(tod_appropriate_greeting $today)
echo "$greeting"
# name=$(cat ~/.config/sxhkd/Scripts/Macros/Names | rofi -dmenu)
names=(
    Юлия
    Айжан
    Александр
    Денис
    Анастасия
    Александра
    Полина )
IFS=$'\n' sorted=($(sort <<<"${names[*]}"))
unset IFS
name=$(for item in ${names[*]}
       do
	   printf "%s\n" $item
       done | rofi -dmenu -i -matching fuzzy -font "Fira Code 14") 
echo "$greeting, $name!" | xclip -sel clipboard
xdotool key ctrl+v
setxkbmap en
