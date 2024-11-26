#!/bin/bash
words=$(awk '{for (i=1;i<=N;i++) print $i}' sample.txt) 
echo $words

# tr -s '[:space:]' '\n' < sample.txt



