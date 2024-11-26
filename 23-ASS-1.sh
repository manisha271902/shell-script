#!/bin/bash
awk '{for (i=1;i<=NF;i++) word_count[$i]++} END {for (i in word_count) print word, word-count[i]}' sample.txt
# echo "$words"

# tr -s '[:space:]' '\n' < sample.txt



