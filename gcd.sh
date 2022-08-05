#!/bin/sh

#数字のチェック
if [[ "$1" =~ ^[0-9]+$ ]] || [[ "$2" =~ ^[0-9]+$ ]];then
  echo "Input is not a number"
  exit 1
fi

while [ 0 -lt "$1" ]
do
  t=`expr $2 % $1`
  set $t $1
done
echo $2