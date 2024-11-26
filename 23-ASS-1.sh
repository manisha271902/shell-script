#!/bin/bash
# awk '{for (i=1;i<=N;i++) print $i}' sample.txt

s1=tr -s '[:space:]' '\n' < sample.txt
echo $s1


