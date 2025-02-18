#!/bin/bash

secreto=8

echo "Acierta el número (del 1 al 9)"
read numero

if [ $numero -eq $secreto ];then
    echo ¡ACERTASTE!
else
    if [ $numero -lt $secreto ];then
        echo El numero que buscas es más alto
    else
        echo El numero que buscas es más bajo
    fi
fi