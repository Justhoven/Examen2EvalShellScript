#!/bin/bash

resto=$(($1%$2))

for (( i=$resto; i>0; i++)) do
    resto=$(($1%$2))
    if [ $resto -eq 0 ]; then
        mcd=$2
    else
        $1=$2
        $2=$resto
    fi
done


echo $mcd


#Si el resto es != 0, sustituimos a por b, b por el resto,y repetimos desde el paso 1 hasta que b sea = 0. Cuando ocurra eso a será el M.C.D.