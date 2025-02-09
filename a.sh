#!/bin/bash
source "init.sh"
source "loop.sh" &
source "events.sh"
source "status.sh"
source "update.sh"



while true;do
    read -n 1 key
    tput cup `tput lines` 0
    case "$key" in
        "w")
            echo -n "pressed [w]"
            updateHp "-" "1";;
        *)
            echo -n "$key"
            updateHp "+" "1";;
    esac
done

clear