#!/bin/bash


#script that reads text file and counts the occurences of each word ,
# displaying the top 5 most frequent words along with their counts

FILE_NAME="/home/centos/shell-script/sample.txt"

while IFS= read -r line
do 
    echo "$line"



done < $FILE_NAME
