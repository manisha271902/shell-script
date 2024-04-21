#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 50 ]
then
    echo "Given numvber $NUMBER is greaterthan 50"
else
    echo "GIven num,ber is less than 50"
fi

#-gt, -lt, eq, -ge, -le