source "function.sh"

life=null

while true; do
    echo "选择你喜欢的剧情"

    echo -e "1.城市\n2.雨林\n3.森林x\n4.高山x\n5.不毛之地x"
    read -n 1 key1

    case "$key1" in
        "1")
            life="city"
            say "^^剧情介绍：在城市里，你会遇见各种各样的人，比如流浪者、黑社会、上班族、学生等等。^^但是别忘了，你的目的是在城市中生存下来，这可不是一个简单的事！^你确定要选城市吗？(Y.确定 N.返回)";;
        "2")
            life="rainforset"
            say "^^剧情介绍：雨林中的动物让你眼花缭乱，他们有着他们自己的一套规则，^^如果你贸然闯入，他们可是不会手下留情的。^你确定要选雨林吗？(Y.确定 N.返回)";;
        # "3")
        # "4")
        # "5")
        *)echo "别乱选";;
    esac

    read -n 1 key2

    case "$key2" in
        "Y"|"y")
            echo "$life" > "status/life"
            echo "OK:$life"
            break;;
        *)
            echo "已取消";;
    esac
done