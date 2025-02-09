updateHp(){
    # [+|-|=] <num>
    local hp=`cat status/hp`
    local tmp=0
    case "$1" in
        "+")
            tmp=$(($hp+$2));;
        "-")
            tmp=$(($hp-$2));;
        "=")
            tmp=$2;;
        *)
            exit 2;;
    esac
    echo "$tmp" > "status/hp"
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
}