#!/bin/bash
# awk '{for (i=1;i<=NF;i++) word_c[$i]++} END {for (i in word_c) print i, word_c[i]}' sample.txt | sort -k2,2nr | head -n 5

# echo "$words"

# tr -s '[:space:]' '\n' < sample.txt



echo $(awk '{for (i=1;i<=NF;i++) word_c[$i]++}' sample.txt)

