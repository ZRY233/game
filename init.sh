# 捕捉 SIGINT 信号
bye(){
    clear
    tput cnorm  # 重新显示光标
    exec stty echo   # 重新开启输入回显
    echo "好吧,再见ヾ(≧▽≦*)o"
    exit 0
}
trap bye SIGINT

stty -echo  # 关闭输入回显
tput civis  # 隐藏光标

# 清屏
clear

# 全局变量初始化和存储
mkdir status 1>/dev/null 2>&1
if ! test -e "status/time"; then
    echo "0" > status/time
fi
if ! test -e "status/hp"; then
    echo "100" > status/hp
fi
if ! test -e "status/hunger"; then
    echo "100" > status/hunger
fi
if ! test -e "status/explored"; then
    echo "0" > status/explored
fi
if ! test -e "status/chat"; then
    echo "null" > status/chat
fi
if ! test -e "status/story"; then
    echo "no" > status/story
fi
if ! test -e "status/life"; then
    echo "null" > status/life
fi

if test "`cat status/life`" == "null"; then
    source "choiceLife.sh"
fi

if test "`cat status/story`" == "no"; then
    case "`cat status/life`" in
        "city")
            source "story/city.sh";;
        "rainforset")
            source "story/rainforset.sh";;
        "forset")
            source "story/forset.sh";;
        "mountain")
            source "story/mountain.sh";;
        "hell")
            source "story/hell.sh";;
        *)
            echo "错误 3"
            bye;;
    esac
fi