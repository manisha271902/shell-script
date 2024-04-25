#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "Please run  the script as root user"
    exit 1
fi
dnf install mysql -y

echo "is script proceeding?"