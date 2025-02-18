#!/bin/bash

cont=0

while read linea;do

    ciudad=$(echo $linea | awk -F, '{print $3}')
    if [ $1 = $ciudad ];then
        cont=$((cont+1))
    fi

done < datos.txt

echo Hay $cont residentes en esa ciudad