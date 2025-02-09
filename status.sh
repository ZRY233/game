height=`tput lines`
width=`tput cols`

showTime(){
    local time=`cat status/time`
    hours=$((time / 3600))
    minutes=$(( (time % 3600) / 60))
    seconds=$((time % 60))
    local output=`printf "%s%02d%s%02d%s%02d" "Time: " "${hours}" ":" "${minutes}" ":" "${seconds}"`
    tput cup 0 $((${width}-${#output}))
    echo -n "$output"
}
showExplored(){
    local explored=`cat status/explored`
    local output=`printf "%s%.2f%s" "Explored: " "${explored}" " km"`
    tput cup 1 $((${width}-${#output}))
    echo -n "$output"
}
showHp(){
    #HP写左上角
    local hp=`cat status/hp`
    local output=""
    #总共100hp，但进度条只需要50长就行了
    for ((a=1;a<=${hp}/2;a++));do output+="#"; done
    local hpWidth=${#output}    #待用
    tput cup 0 0
    printf "%-8s%3d [%-50s]" "HP:" "${hp}" "${output}"
}
showHunger(){
    #Hunger写左上角,HP下面
    local hunger=`cat status/hunger`
    local output=""
    #总共100hunger，但进度条只需要50长就行了
    for ((a=1;a<=${hunger}/2;a++));do output+="#"; done
    local hungerWidth=${#output}    #待用
    tput cup 1 0
    printf "%-8s%3d [%-50s]" "Hunger:" "${hunger}" "${output}"
}