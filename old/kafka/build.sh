SUBDIRS="zk kafka"

for d in $SUBDIRS; do
    cd $d
    ./build.sh
    cd .. 
done

