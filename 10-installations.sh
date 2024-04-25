#!/bin/bash
USERID = $(id -u)
if [$USERID -ne 0]
then
    echo "Please run  the script as root user"
    exut 1
fi
dnf install mysql -y

