#!/bin/bash

SOURCE_DIR=/tmp/app-logs

if [ -d $SOURCE_DIR ]
then
    echo "SOurce direcoryt exists"
else
    echo "SOurce direcory does note xists"
    exit 1
fi

FILES=$(find $SOURCE_DIR -name "*log" -mtime +14)

while IFS= read -r line #ikada space undali read ki mundhu 
do
  echo "List of files are $line"   #line anedhi seperator ikada, - ila different vi untay
  rm -rf $line
done <<< $FILES
