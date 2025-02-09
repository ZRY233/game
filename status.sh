updateTime(){
    hours=$((time / 3600))
    minutes=$(( (time % 3600) / 60))
    seconds=$((time % 60))
    local output=`printf "%s%02d%s%02d%s%02d" "Time: " "${hours}" ":" "${minutes}" ":" "${seconds}"`
    tput cup 0 $((${width}-${#output}))
    echo -n "$output"
    ((time++))
}
updateHp(){
    #HP写左上角
    local output="HP:\t${hp} ["
    #总共100hp，但进度条只需要50长就行了
    for ((a=1;a<${hp}/2;a++));do output+="#"; done
    for ((a=0;a<50-${hp}/2;a++));do output+=" "; done
    output+="]"
    local hpWidth=${#output}    #待用
    tput cup 0 0
    echo -ne "${output}"
}
updateHunger(){
    #Hunger写左上角,HP下面
    local output="Hunger:\t${hunger} ["
    #总共100hunger，但进度条只需要50长就行了
    for ((a=1;a<${hunger}/2;a++));do output+="#"; done
    for ((a=0;a<50-${hunger}/2;a++));do output+=" "; done
    output+="]"
    local hungerWidth=${#output}    #待用
    tput cup 1 0
    echo -ne "${output}"
}