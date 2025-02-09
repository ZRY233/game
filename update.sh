source "status.sh"

updateTime(){
    local time=`cat status/time`
    ((time++))
    echo "$time" > "status/time"
}

while true;do
    updateTime
    getLatestValues
    showTime
    showHp
    showHunger
    showExplored
    sleep 1

done