function nginx()
{
        CPU=$(ps aux| awk '/nginx/{total+=$3} END {print total}') #CPU usage
        CPU=$(printf "%.2f\n" $CPU)
        MEMS=$(ps aux| awk '/nginx/{total+=$4} END {print total}') # memory using by service in percentage
        AMEM=$(free -m | grep Mem |awk '{print $2}') # total free memory in system
        MEM=$( echo "$MEMS/100*$AMEM" | bc -l ) # converting to MB
        MEM=$( printf "%.2f\n" $MEM ) #Rounding decimal place
        echo Memory usage = $MEM MB ; echo CPU usage = $CPU %
}

function apache()
 {
        CPU=$(ps aux| awk '/httpd/{total+=$3} END {print total}') #CPU usage
        CPU=$(printf "%.2f\n" $CPU)
        MEMS=$(ps aux| awk '/httpd/{total+=$4} END {print total}') # memory using by service in percentage
        AMEM=$(free -m | grep Mem |awk '{print $2}') # total free memory in system
        MEM=$( echo "$MEMS/100*$AMEM" | bc -l ) # converting to MB
        MEM=$( printf "%.2f\n" $MEM ) #Rounding decimal place
        echo Memory usage = $MEM MB ; echo CPU usage = $CPU %
}

function mysql()
{
        CPU=$(ps aux| awk '/mysql/{total+=$3} END {print total}') #CPU usage
        CPU=$(printf "%.2f\n" $CPU)
        MEMS=$(ps aux| awk '/mysql/{total+=$4} END {print total}') # memory using by service in percentage
        AMEM=$(free -m | grep Mem |awk '{print $2}') # total free memory in system
        MEM=$( echo "$MEMS/100*$AMEM" | bc -l ) # converting to MB
        MEM=$( printf "%.2f\n" $MEM ) #Rounding decimal place
        echo Memory usage = $MEM MB ; echo CPU usage = $CPU %
}
function beanstalk()
{
        CPU=$(ps aux| awk '/beanstalk/{total+=$3} END {print total}') #CPU usage
        CPU=$(printf "%.2f\n" $CPU)
        MEMS=$(ps aux| awk '/beanstalk/{total+=$4} END {print total}') # memory using by service in percentage
        AMEM=$(free -m | grep Mem |awk '{print $2}') # total free memory in system
        MEM=$( echo "$MEMS/100*$AMEM" | bc -l ) # converting to MB
        MEM=$( printf "%.2f\n" $MEM ) #Rounding decimal place
        echo Memory usage = $MEM MB ; echo CPU usage = $CPU %
}

function memcached()
{
        CPU=$(ps aux| awk '/memcached/{total+=$3} END {print total}') #CPU usage
        CPU=$(printf "%.2f\n" $CPU)
        MEMS=$(ps aux| awk '/memcached/{total+=$4} END {print total}') # memory using by service in percentage
        AMEM=$(free -m | grep Mem |awk '{print $2}') # total free memory in system
        MEM=$( echo "$MEMS/100*$AMEM" | bc -l ) # converting to MB
        MEM=$( printf "%.2f\n" $MEM ) #Rounding decimal place
        echo Memory usage = $MEM MB ; echo CPU usage = $CPU %
}
function redis()
 {
        CPU=$(ps aux| awk '/redis/{total+=$3} END {print total}') #CPU usage
        CPU=$(printf "%.2f\n" $CPU)
        MEMS=$(ps aux| awk '/redis/{total+=$4} END {print total}') # memory using by service in percentage
        AMEM=$(free -m | grep Mem |awk '{print $2}') # total free memory in system
        MEM=$( echo "$MEMS/100*$AMEM" | bc -l ) # converting to MB
        MEM=$( printf "%.2f\n" $MEM ) #Rounding decimal place
        echo Memory usage = $MEM MB ; echo CPU usage = $CPU %
}

function php70()
{
        CPU=$(ps aux| awk '/php70-cs/{total+=$3} END {print total}') #CPU usage
        CPU=$(printf "%.2f\n" $CPU)
        MEMS=$(ps aux| awk '/php70/{total+=$4} END {print total}') # memory using by service in percentage
        AMEM=$(free -m | grep Mem |awk '{print $2}') # total free memory in system
        MEM=$( echo "$MEMS/100*$AMEM" | bc -l ) # converting to MB
        MEM=$( printf "%.2f\n" $MEM ) #Rounding decimal place
        echo Memory usage = $MEM MB ; echo CPU usage = $CPU %
}

function php71()
{
        CPU=$(ps aux| awk '/php71-cs/{total+=$3} END {print total}') #CPU usage
        CPU=$(printf "%.2f\n" $CPU)
        MEMS=$(ps aux| awk '/php71/{total+=$4} END {print total}') # memory using by service in percentage
        AMEM=$(free -m | grep Mem |awk '{print $2}') # total free memory in system
        MEM=$( echo "$MEMS/100*$AMEM" | bc -l ) # converting to MB
        MEM=$( printf "%.2f\n" $MEM ) #Rounding decimal place
        echo Memory usage = $MEM MB ; echo CPU usage = $CPU %
}

function php72()
{
        CPU=$(ps aux| awk '/php72-cs/{total+=$3} END {print total}') #CPU usage
        CPU=$(printf "%.2f\n" $CPU)
        MEMS=$(ps aux| awk '/php72/{total+=$4} END {print total}') # memory using by service in percentage
        AMEM=$(free -m | grep Mem |awk '{print $2}') # total free memory in system
        MEM=$( echo "$MEMS/100*$AMEM" | bc -l ) # converting to MB
        MEM=$( printf "%.2f\n" $MEM ) #Rounding decimal place
        echo Memory usage = $MEM MB ; echo CPU usage = $CPU %
}

function php73()
{
        CPU=$(ps aux| awk '/php73-cs/{total+=$3} END {print total}') #CPU usage
        CPU=$(printf "%.2f\n" $CPU)
        MEMS=$(ps aux| awk '/php73/{total+=$4} END {print total}') # memory using by service in percentage
        AMEM=$(free -m | grep Mem |awk '{print $2}') # total free memory in system
        MEM=$( echo "$MEMS/100*$AMEM" | bc -l ) # converting to MB
        MEM=$( printf "%.2f\n" $MEM ) #Rounding decimal place
        echo Memory usage = $MEM MB ; echo CPU usage = $CPU %
}

function php74()
{
        CPU=$(ps aux| awk '/php74/{total+=$3} END {print total}') #CPU usage
        CPU=$(printf "%.2f\n" $CPU)
        MEMS=$(ps aux| awk '/php74/{total+=$4} END {print total}') # memory using by service in percentage
        AMEM=$(free -m | grep Mem |awk '{print $2}') # total free memory in system
        MEM=$( echo "$MEMS/100*$AMEM" | bc -l ) # converting to MB
        MEM=$( printf "%.2f\n" $MEM ) #Rounding decimal place
        echo Memory usage = $MEM MB ; echo CPU usage = $CPU %
}

function main()
{
        if [ $# -lt 1 ];
        then
                echo "usage: nginx | apache | mysql | beanstalk | memcached | redis | php70 | php71 | php72 | php73 | php74"
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
        elif [ $SERV = "php70" ]; then
                php70 $@
        elif [ $SERV = "php71" ]; then
                php71 $@
        elif [ $SERV = "php72" ]; then
                php72 $@
        elif [ $SERV = "php73" ]; then
                php73 $@
        elif [ $SERV = "php74" ]; then
                php74 $@
        else
                echo [$SERV] a bad argument.
        fi
}

main $@
