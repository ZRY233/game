while true;do
    tput cup `tput lines` 0
    read -n 1 -s key
    case "$key" in
        "w")
            echo -n "pressed [w]";;
        *)
            echo -n "unkonwn key";;
    esac
done