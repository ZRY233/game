#!/bin/bash
source "init.sh"
source "update.sh" &
source "events.sh"
source "status.sh"


while true;do
    read -n 1 -s key
    tput cup `tput lines` 0
    case "$key" in
        "w")
            echo -n "pressed [w]";;
        *)
            echo -n "$key";;
    esac
done

clear