#! /bin/sh

choice=$(lpass ls | dmenu | awk '{print $1}')


lpass show "${choice#(none)/}" --password -c && notify-send -a "LastPass" "Copied to clipboard" || notify-send -a "LastPass" "Problem Copying to clipboard"
