#!/bin/bash
words=$(awk '{for (i=1;i<=NF;i++) word-count[$i]++} END {for (i in word-count) print word, word-count[i]}' sample.txt) 
echo "$words"

# tr -s '[:space:]' '\n' < sample.txt



