updateHp(){
    # [+|-|=] <num>
    local hp=`cat status/hp`
    local tmp=0
    local say=
    case "$1" in
        "+")tmp=$(($hp+$2));say="增加了";;
        "-")tmp=$(($hp-$2));say="减少了";;
        "=")tmp=$2;say="重置为";;
        *)exit 2;;
    esac
    echo "$tmp" > "status/hp"
    tput cup 3 0
    echo "你的HP${say}$2"
    showHp
}
updateHunger(){
    # 参数格式： [+|-|=] <num>
    local hunger=$(cat status/hunger)
    local tmp=0
    case "$1" in
        "+")
            tmp=$(($hunger + $2));;
        "-")
            tmp=$(($hunger - $2));;
        "=")
            tmp=$2;;
        *)
            exit 2;;
    esac
    echo "$tmp" > "status/hunger"
    showHunger
}

updateExplored(){
    # 参数格式： [+|-|=] <num>
    local explored=$(cat status/explored)
    local tmp=0
    case "$1" in
        "+")
            tmp=$(($explored + $2));;
        "-")
            tmp=$(($explored - $2));;
        "=")
            tmp=$2;;
        *)
            exit 2;;
    esac
    echo "$tmp" > "status/explored"
    showExplored
}