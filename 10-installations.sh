#!/bin/bash
USERID=$(id -u) #nospcae here
if [ $USERID -ne 0 ] #ikada space lekunte error ochindhi
then
    echo "Please run  the script as root user"
    exit 1 #manually exit if error comes
else
    echo "You are a super user"
fi
dnf install mysqll -y



if [ $? -ne 0 ]
then 
    echo "installlation of mysql is not done"
    exit 1
else
    echo "installation success"
fi

dnf install nginx -y
echo "is script proceeding?"