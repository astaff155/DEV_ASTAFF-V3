#!/bin/sh
./tg/tg -s ./bot/bot.lua
echo "\033[38;5;110m
function print_logo() {       
	green "          ___  _____   __         _   ___ _____ _   ___ ___        __   ______"
 	green "         |   \| __\ \ / /        /_\ / __|_   _/_\ | __| __|  ___  \ \ / /__ /"
 	green "         | |) | _| \ V /        / _ \\__ \ | |/ _ \| _|| _|  |___|  \ V / |_ \"
 	green "         |___/|___| \_/  ___   /_/ \_\___/ |_/_/ \_\_| |_|           \_/ |___"
  green "                        |___|"                                               

	echo -e "\n\e[0m"
}

function logo_play() {
    declare -A txtlogo
    seconds="0.010"
    txtlogo[1]=" ___  _____   __         _   ___ _____ _   ___ ___        __   ______"
    txtlogo[2]="|   \| __\ \ / /        /_\ / __|_   _/_\ | __| __|  ___  \ \ / /__ /"
    txtlogo[3]="| |) | _| \ V /        / _ \\__ \ | |/ _ \| _|| _|  |___|  \ V / |_ \"
    txtlogo[4]="|___/|___| \_/  ___   /_/ \_\___/ |_/_/ \_\_| |_|           \_/ |___"
    txtlogo[5]="               |___|"
    printf "\e[31m\t"
    for i in ${!txtlogo[@]}; do
        for x in `seq 0 ${#txtlogo[$i]}`; do
            printf "${txtlogo[$i]:$x:1}"
            sleep $seconds
        done
        printf "\n\t"
    done
    printf "\n"
	echo -e "\e[0m"
}
exit

# @ASTAFF
# https://github.com/DEV_ASTAFF
