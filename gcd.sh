#!/bin/bash

#引数の数のチェック
if [ $# != 2 ]; then
    echo 引数エラー: $*
    exit 1
fi

arg1=$(echo "$1" | sed 's/^-//')
arg2=$(echo "$2" | sed 's/^-//')

#数字のチェック
if [[ "$arg1" =~ ^[0-9]+$ ]] && [[ "$arg2" =~ ^[0-9]+$ ]];then
  while [ 0 -ne "$arg2" ]
  do
    t=`expr $arg1 % $arg2`
    arg1=$(echo "$arg2")
    arg2=$(echo "$t")
  done
  echo $arg1
else
  echo "Input is not a natural number"
  exit 1
fi

