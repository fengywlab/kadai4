#!/bin/sh

#数字のチェック
expr $1 + 1 >&/dev/null
ret1=$?

expr $2 + 1 >&/dev/null
ret2=$?

if [ "$ret1" -ge 2 ] || [ "$ret2" -ge 2 ];then
  echo "Input is not a number"
  exit 1
fi

while [ 0 -lt $1 ]
do
  t=`expr $2 % $1`
  set $t $1
done
echo $2