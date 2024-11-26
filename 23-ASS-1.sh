#!/bin/bash
awk '{for (i=1;i<=N;i++) print %s $i}' sample.txt

# tr -s '[:space:]' '\n' < sample.txt



