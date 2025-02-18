#!/bin/bash

Escribe un script que cuente cuántas personas hay en cada ciudad y lo muestre en formato:
Madrid: 3
Barcelona: 1
Sevilla: 1
...
*Si sólo lo haces para las ciudades que figuran en datos.txt -> 1 punto.
*Si lo haces para cualquier ciudad que pueda aparecer en un futuro en datos.txt -> 2 puntos.

madrid=0
vitoria=0
barcelona=0
valencia=0

while read linea;do

    ciudad=$(echo $linea | awk -F, '{print $3}')
    if [ $ciudad = "Vitoria"];then
        vitoria=$((vitoria+1))
    fi
    if [ $ciudad = "Madrid"];then
        madrid=$((madrid+1))
    fi
    if [ $ciudad = "Barcelona"];then
        barcelona=$((barcelona+1))
    fi
    if [ $ciudad = "Valencia"];then
        valencia=$((valencia+1))
    fi
done < datos.txt

echo "Madrid: $madrid"
echo "Barcelona: $barcelona"
echo "Valencia: $valencia"
echo "Vitoria: $vitoria"