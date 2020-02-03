#!/bin/bash

if [ $# -lt 2 ]
        then
                echo 'usage: ./_replace.sh newPythonName oldCname'
                exit
fi

name='pyiArduinoI2Cdsl'
cname='iarduino_I2C_DSL'

mv $name $1
rm README.md
mv xxxREADME.md README.md

pushd $1

mv $name.pyx $1.pyx
mv $cname.pxd $2.pxd

popd


egrep -lRZ $name . | xargs -0 -l sed -i -e "s/$name/$1/g"
egrep -lRZ $cname . | xargs -0 -l sed -i -e "s/$cname/$2/g"

