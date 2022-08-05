#!/bin/sh



while [ 0 -lt "$1" ]
do
  t=`expr $2 % $1`
  set $t $1
done
echo $2