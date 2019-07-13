#!/bin/bash

function rand(){
    min=$1
    max=$(($2-$min+1))
    num=$(($RANDOM+1000000000))
    echo $(($num%$max+$min))
}

rnd=$(rand 0 1)

if [ $rnd -eq 0 ]
then
    /home/ctf/pwn
else
    /home/ctf/pwn2
fi

exit 0
