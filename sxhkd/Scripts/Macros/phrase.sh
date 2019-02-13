#!/bin/bash
setxkbmap ru
phrase_dictionary(){
    declare -A PHRASES
    PHRASES[Продолжаем]="Продолжаем прошлый урок, та же ссылка, дублирую"
    PHRASES[Скайп]="Не будем тратить время. Переходим в Скайп."
    PHRASES[Начнём урок]="Начнём сегодняшний урок как только пройдёте по ссылке."
    PHRASES[Всё готово]="Всё готово, начнём как будете готовы."
    PHRASES[Жду]="Всё готово, жду когда вы присоединитесь чтобы начать..."
    for K in "${!PHRASES[@]}";do
	phrases="$K\n$phrases"
    done
    phrases=$(echo -e $phrases | sed '/^$/d'  )
    ans=$(echo -e "$phrases" | rofi -dmenu -i -matching fuzzy -auto-select)
    echo ${PHRASES[$ans]}
}

echo "$(phrase_dictionary)" | xclip -sel clipboard
xdotool key ctrl+v
setxkbmap us
