#!/bin/bash


#script that reads text file and counts the occurences of each word ,
# displaying the top 5 most frequent words along with their counts

FILE_NAME="/home/centos/shell-script/sample.txt"

echo "File path: $FILE_NAME"
if [ -f $FILE_NAME ]
then
    # s=$(cat $FILE_NAME)  
    while IFS= read -r line
    do
        
        clean_line=$(echo "$line" | tr -d '[:punct:]' | $ tr ' ' '\n' < $line | grep WORD | wc -l)
        for i in $clean_line
        do
           c=$(echo "$i" | wc -w)
           echo $c
        done
    done < $FILE_NAME
    
  
else
    echo "File does not exixts"
fi




