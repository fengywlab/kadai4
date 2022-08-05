#!/bin/sh

result1=$(./gcd.sh 2 4)
if [ "$result1" = "2" ]; then
    echo "test1 OK"
else
    echo "NG:計算は正しくありません。"
    exit 1
fi

result2=$(./gcd.sh 1 b )
if [ "$result2" = "Input is not a number" ]; then
    echo "test2 OK"
else
    echo "NG:数字のチェック処理は正しくありません。"
    exit 1 
fi

echo "All test is OK"
