IFS='-'
say(){
    for line in $1; do
        length=${#line}
        for ((a=0;a<${#line};a++));do
            if test "${line:a:1}" == "^"; then
                echo
                continue
            fi
            echo -n "${line:a:1}"
            sleep 0.1
        done
        echo -e "\n"
        sleep 0.5
    done
}