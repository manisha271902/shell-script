#!/bin/bash


#script that reads text file and counts the occurences of each word ,
# displaying the top 5 most frequent words along with their counts

FILE_NAME="/home/centos/shell-script/sample.txt"

echo "File path: $FILE_NAME"
if [ -f $FILE_NAME ]
then
    s=$(cat $FILE_NAME)  
    # echo $s
    clean_line=$(echo "$s" | tr -d '[:punct:]' | tr '[:upper:]' '[:lower:]' | tr -s ' ' '\n' | sort) 
    echo $clean_line
        # for i in $clean_line
        # do
           
        #    echo $i
           
        # done
    # done < $FILE_NAME
    
  
else
    echo "File does not exixts"
fi




