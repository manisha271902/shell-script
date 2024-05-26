#!/bin/bash


#script that reads text file and counts the occurences of each word ,
# displaying the top 5 most frequent words along with their counts

FILE_NAME="C:\Users\manis\Devopsclass\repos\shell-script\sample.txt"

while IFS= read -r line
do 
    FILE_CONTENTS=$(echo $line)
    echo "$FILE_CONTENTS"



done <<< $FILE_NAME
