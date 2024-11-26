#!/bin/bash
file_name="sample.txt"
while IFS= read -r line
do
    echo $(cat $line)
    words=$(awk -F " " '{print $6F}')
done <<< $file_name
