source "status.sh"

updateTime(){
    local time=`cat status/time`
    ((time++))
    echo "$time" > "status/time"
}
# checkDied(){

# }

while true;do
    updateTime
    showTime
    showHp
    showHunger
    showExplored
    sleep 1

done