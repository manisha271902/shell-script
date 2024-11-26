#!/bin/bash
awk -F "" '{for (i=1;i<=N;i++) print $i}' sample.txt

# tr -s '[:space:]' '\n' < sample.txt



