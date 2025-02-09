#!/bin/bash
source "status.sh"
bye(){
    clear
    echo "好吧,再见ヾ(≧▽≦*)o"
    exit 0
}
trap bye SIGINT
clear

time=0
hp=100
hunger=100

while true;do
    height=`tput lines`
    width=`tput cols`

    updateTime
    updateHp
    updateHunger
    
    sleep 1
done
claer