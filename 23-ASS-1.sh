#!/bin/bash
file_name="sample.txt"
while IFS= read -r line
do
    echo $(cat $line)

done <<< $file_name
