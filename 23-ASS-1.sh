#!/bin/bash
awk '{for (i=1;i<=NF;i++) word_count[$i]++} END {for (i in word_count) print $(head -n 5 (i, word_count[i])}' sample.txt | sort -k2,2nr

# echo "$words"

# tr -s '[:space:]' '\n' < sample.txt



