#!/bin/bash

    cat datos.txt | sort -t, -k 2 | awk -F, '{print $1, $2}' | head -n 1
    cat datos.txt | sort -r -t, -k 2 | awk -F, '{print $1, $2}' | head -n 1

    
