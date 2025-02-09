# $RANDOM 提供随机数

declare -a evetsList
evetsList+=("遇到陷阱" "捡到浆果" "捡到空瓶子")
evetsCount=${#evetsList[@]}

getRandomValue(){
    local min=0
    local max=$evetsCount
    randomValue=$((RANDOM % (${max} - ${min} + 1) + ${min}))
    echo "$randomValue"
}

addRandomEvent(){
    case "$(getRandomValue)" in
        "遇到陷阱")
            hp-=5;;
        *)
            echo "错误 1"
            exit 1
            ;;
    esac
}