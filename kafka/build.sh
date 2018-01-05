SUBDIRS="zk kafka-zk"

for d in $SUBDIRS; do
    cd $d
    ./build.sh
    cd .. 
done

