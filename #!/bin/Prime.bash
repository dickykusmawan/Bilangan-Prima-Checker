#!/bin/bash

echo "Masukkan bilangan yang ingin dicek: "
read num

# Cek apakah bilangan kurang dari 2
if [ $num -lt 2 ]
then
    echo "$num bukan bilangan prima"
    exit
fi

# Cek apakah bilangan hanya bisa dibagi oleh 1 dan dirinya sendiri
i=2
while [ $i -lt $num ]
do
    if [ `expr $num % $i` -eq 0 ]
    then
        echo "$num bilangan ini bukan bilangan prima"
        exit
    fi
    i=`expr $i + 1`
done

echo "$num bilangan ini adalah bilangan prima"
