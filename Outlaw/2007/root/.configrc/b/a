#!/bin/sh
pwd > dir.dir
dir=$(cat dir.dir)
cd $dir
./stop
echo "#!/bin/sh
cd $dir
./run">sync
chmod u+x sync
chmod u+x stop
chmod u+x ps
chmod u+x run
./run
