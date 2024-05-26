#!/bin/bash


#script that reads text file and counts the occurences of each word ,
# displaying the top 5 most frequent words along with their counts

FILE_NAME="/home/centos/shell-script/sample.txt"
echo "File path: $FILE_NAME"
if [ -f $FILE_NAME ]
then
    while read line
    do 
       echo $line
    done < "$FILE_NAME"
else
    echo "File does not exixts"
fi
