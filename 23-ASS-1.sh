#!/bin/bash
file_name="sample.txt"
while IFS= read -r line
do
    echo $(cat $line)
    words=$(awk -F " " '{for (i=1;i<=NF;i++) sample.txt}')

done <<< $file_name
