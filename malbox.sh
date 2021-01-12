#!/bin/bash

echo "[+] start collecting --> /tmp/malbox/"

bak_path="/tmp/malbox/"
var_path="/tmp/malbox/var/"
spool_path="/tmp/malbox/var/spool/"
etc_path="/tmp/malbox/etc/"
opt_path="/tmp/malbox/opt/"
root_path="/tmp/malbox/root/"
syslog_path="/tmp/malbox/var/log/"
audit_path="/tmp/malbox/var/log/audit/"
docker_compose_path="/tmp/malbox/docker-compose.yml"

echo "[+] backup list --> [ /var/spool/cron/, /etc/cron.d/, /etc/cron.hourly/, /etc/cron.daily/, /etc/cron.weekly/, /root/.ssh/, /var/log/, /tmp/ ]"

mkdir ./tmp/
cp -rfp /tmp/* ./tmp/ > /dev/null 2>&1
mkdir -p $bak_path $var_path $spool_path $etc_path $opt_path $root_path $syslog_path $audit_path
touch $docker_compose_path

mv ./tmp/ $bak_path
cp -rfp /var/tmp/ $var_path
cp -rfp /var/spool/cron/ $spool_path
cp -rfp /etc/cron.d/ $etc_path
cp -fp /opt/* $opt_path > /dev/null 2>&1
cp -fp /root/* $root_path > /dev/null 2>&1
cp -rfp /root/.ssh/ $root_path > /dev/null 2>&1
cp -rfp /var/log/syslog $syslog_path > /dev/null 2>&1
cp -rfp /var/log/audit/audit.log $audit_path > /dev/null 2>&1

chmod 777 /tmp/malbox/root/*
chmod 777 /tmp/malbox/tmp/*

ps -elf > $bak_path/ps.txt
echo "[+] create process list --> /tmp/malbox/ps.txt"

netstat -antp > $bak_path/netstat.txt
echo "[+] create netstat list --> /tmp/malbox/netstat.txt"

echo -e "version: '3'" >> $docker_compose_path
echo -e "services:" >> $docker_compose_path
echo -e " malware:" >> $docker_compose_path
echo -e "  container_name: [malware_name]" >> $docker_compose_path
echo -e "  image: g4rb3n/malbox" >> $docker_compose_path

echo -e "  volumes:" >> $docker_compose_path
echo -e "   - ./etc/cron.d/:/etc/cron.d/" >> $docker_compose_path
echo -e "   - ./var/spool/cron/:/var/spool/cron/" >> $docker_compose_path
echo -e "   - ./opt/:/opt/" >> $docker_compose_path
echo -e "   - ./root/:/root/" >> $docker_compose_path
echo -e "   - ./tmp/:/tmp/" >> $docker_compose_path

echo -e "  command:" >> $docker_compose_path
echo -e "   - /bin/bash" >> $docker_compose_path
echo -e "   - -c" >> $docker_compose_path
echo -e "   - |" >> $docker_compose_path
echo -e "    service cron start &" >> $docker_compose_path
echo -e "    service ssh start &" >> $docker_compose_path
echo -e "    service rsyslog start &" >> $docker_compose_path
echo -e "    chmod 777 [script_path] &" >> $docker_compose_path
echo -e "    [script_path] &" >> $docker_compose_path
echo -e "    tail -f /dev/null" >> $docker_compose_path

echo "[+] create docker-compose file --> /tmp/malbox/docker-compose.yml"

tar -zcPf malbox.tar.gz /tmp/malbox/ 2>/dev/null
echo "[+] complete backup --> ./malbox.tar.gz"