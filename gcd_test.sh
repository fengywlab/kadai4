#!/bin/sh

result1=$(./gcd.sh 2 4)
if [ "$result1" = "2" ]; then
    echo "test1 OK"
else
    echo "NG:計算は正しくありません。(gcd.sh 2 4)"
    exit 1
fi

result2=$(./gcd.sh -2 -4)
if [ "$result2" = "2" ]; then
    echo "test2 OK"
else
    echo "NG:計算は正しくありません。(gcd.sh -2 -4)"
    exit 1
fi

result3=$(./gcd.sh 0 -4)
if [ "$result3" = "4" ]; then
    echo "test3 OK"
else
    echo "NG:計算は正しくありません。(gcd.sh 0 -4)"
    exit 1
fi

result4=$(./gcd.sh -4 0)
if [ "$result4" = "4" ]; then
    echo "test4 OK"
else
    echo "NG:計算は正しくありません。(gcd.sh -4 0)"
    exit 1
fi

result5=$(./gcd.sh 2 4 5)
if [ "$result5" = "引数エラー: 2 4 5" ]; then
    echo "test5 OK"
else
    echo "NG:引数の数のチェックは正しくありません。"
    exit 1 
fi

result6=$(./gcd.sh 1 b )
if [ "$result6" = "Input is not a natural number" ]; then
    echo "test6 OK"
else
    echo "NG:数字のチェック処理は正しくありません。"
    exit 1 
fi

echo "All test is OK"
