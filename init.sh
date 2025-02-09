# 捕捉 SIGINT 信号
bye(){
    clear
    echo "好吧,再见ヾ(≧▽≦*)o"
    exit 0
}
trap bye SIGINT

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