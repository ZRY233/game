chatHeight=15

addMessage(){
    local time="[`showTime`]"
    echo "${time} $1" >> "status/chat"
    
    tput cup 3 0
}