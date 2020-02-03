#!/bin/bash

if [ $# -lt 2 ]
        then
                echo 'usage: ./_replace.sh newPythonName oldCname'
                exit
fi

name='xxxNAMExxx'
cname='xxxCNAMExxx'

echo mv $name $1
#pushd $1

# remove this before actual run:
pushd $name

#EXT="$(ls | grep $name | cut -d "." -f 2)"
#printf "\n"
#echo $EXT

echo mv $name.pyx $1.pyx
echo mv $cname.pxd $2.pxd

popd

echo "egrep -lRZ $name . | xargs -0 -l sed -i -e 's/$name/$1/g'"
echo "egrep -lRZ $cname . | xargs -0 -l sed -i -e 's/$cname/$2/g'"
