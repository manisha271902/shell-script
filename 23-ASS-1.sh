#!/bin/bash
file_name="sample.txt"
while IFS=read -r line;
do
    echo $line

done <<< $file_name
