function nginx()
{
        MEMS=$(ps aux| awk '/nginx/{total+=$4} END {print total}') # memory using by service in percentage
        AMEM=$(free -m | grep Mem |awk '{print $2}') # total free memory in system
        MEM=$( echo "$MEMS/100*$AMEM" | bc -l ) # converting to MB
        MEM=$( printf "%.2f\n" $MEM ) #Rounding decimal place
        echo $MEM "MB memory using by Nginx service"
}

function apache() {
        MEMS=$(ps aux| awk '/httpd/{total+=$4} END {print total}') # memory using by service in percentage
        AMEM=$(free -m | grep Mem |awk '{print $2}') # total free memory in system
        MEM=$( echo "$MEMS/100*$AMEM" | bc -l ) # converting to MB
        MEM=$( printf "%.2f\n" $MEM ) #Rounding decimal place
        echo $MEM "MB memory using by Apache service"
}

function mysql()
{
        MEMS=$(ps aux| awk '/mysql/{total+=$4} END {print total}') # memory using by service in percentage
        AMEM=$(free -m | grep Mem |awk '{print $2}') # total free memory in system
        MEM=$( echo "$MEMS/100*$AMEM" | bc -l ) # converting to MB
        MEM=$( printf "%.2f\n" $MEM ) #Rounding decimal place
        echo $MEM "MB memory using by MariaDB service"
}
function beanstalk()
{
        MEMS=$(ps aux| awk '/beanstalk/{total+=$4} END {print total}') # memory using by service in percentage
        AMEM=$(free -m | grep Mem |awk '{print $2}') # total free memory in system
        MEM=$( echo "$MEMS/100*$AMEM" | bc -l ) # converting to MB
        MEM=$( printf "%.2f\n" $MEM ) #Rounding decimal place
        echo $MEM "MB memory using by Beanstalk service"
}

function memcached()
{
        MEMS=$(ps aux| awk '/memcached/{total+=$4} END {print total}') # memory using by service in percentage
        AMEM=$(free -m | grep Mem |awk '{print $2}') # total free memory in system
        MEM=$( echo "$MEMS/100*$AMEM" | bc -l ) # converting to MB
        MEM=$( printf "%.2f\n" $MEM ) #Rounding decimal place
        echo $MEM "MB memory using by Memcached service"
}

function redis() {
        MEMS=$(ps aux| awk '/redis/{total+=$4} END {print total}') # memory using by service in percentage
        AMEM=$(free -m | grep Mem |awk '{print $2}') # total free memory in system
        MEM=$( echo "$MEMS/100*$AMEM" | bc -l ) # converting to MB
        MEM=$( printf "%.2f\n" $MEM ) #Rounding decimal place
        echo $MEM "MB memory using by Redis service"
}

function php() {
        MEMS=$(ps aux| awk '/php/{total+=$4} END {print total}') # memory using by service in percentage
        AMEM=$(free -m | grep Mem |awk '{print $2}') # total free memory in system
        MEM=$( echo "$MEMS/100*$AMEM" | bc -l ) # converting to MB
        MEM=$( printf "%.2f\n" $MEM ) #Rounding decimal place
        echo $MEM "MB memory using by PHP service"
}
function main()
{
        if [ $# -lt 1 ];
        then
                echo "usage: nginx | apache | mysql | beanstalk | memcached | redis | php "
                exit 1
        fi

        SERV=$1
        shift

        if [ $SERV = "nginx" ]; then
                nginx $@
        elif [ $SERV = "apache" ]; then
                apache $@
        elif [ $SERV = "mysql" ]; then
                mysql $@
        elif [ $SERV = "beanstalk" ]; then
                beanstalk $@
        elif [ $SERV = "memcached" ]; then
                memcached $@
        elif [ $SERV = "redis" ]; then
                redis $@
        elif [ $SERV = "php" ]; then
                php $@
        else
                echo [$SERV] a bad argument.
        fi
}

main $@
