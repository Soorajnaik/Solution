#!/bin/bash
touch inputFile
for i in {0..10}
do
    r=$RANDOM
    echo "$i", "$r" >> "inputFile"
    chmod 777 "inputFile"
done
