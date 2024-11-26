#!/bin/bash

words=$(awk '{for (i=1;i<=NF;i++) print $i}' sample.txt) | wc -l
echo $words

