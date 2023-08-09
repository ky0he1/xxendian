#!/bin/bash

# 引数チェック
if [ $# -eq 0 ]; then
    echo "Usage: $0 <input_string>"
    exit 1
fi

# 引数取得
input="$1"

# ビッグエンディアン表示
echo -e -n  "big:\t"
echo -n "$input" | xxd -p

# リトルエンディアン表示
echo -e -n  "little:\t"
echo -n "$input" | xxd -p | fold -w2 | tac | tr -d '\n'

# 改行
echo
