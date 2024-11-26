#!/bin/bash
file_name="sample.txt"
for i in file_name
do
    echo $i
    words=$(awk -F " " '{for (i=1;i<=NF;i++) sample.txt}')

done <<< $file_name
