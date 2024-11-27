#script that reads text file and counts the occurences of each word ,
# displaying the top 5 most frequent words along with their counts




#!/bin/bash
awk '{for (i=1;i<=NF;i++) word_c[$i]++} END {for (i in word_c) print i, word_c[i]}' sample.txt | sort -k2,2nr | head -n 5

# echo "$words"

# tr -s '[:space:]' '\n' < sample.txt



# echo "$(awk '{for (i=1;i<=NF;i++) word_c[$i]++} END {for (i in word_c) print i, word_c[i]}' sample.txt)"

