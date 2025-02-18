#!/bin/bash

cont=0

for (( i=$1; i<$2; i++))
do
    if [ $1 -lt $2 ];then
        cont=$((cont+1))
    fi
done


echo Hay una diferencia de $cont numeros
