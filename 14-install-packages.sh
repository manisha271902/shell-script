#!/bin/bash

$USERID=$(id -u)
$TIMESTAMP=$(date +%F-%H-%M-%S)
$SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
$LOG_FILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[32m"

if [ $USERID -ne 0 ]
then 
    echo "You are nota super user: please execute the script with root user"
    exit 1
else
    echo "You are a super user"
fi

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 ..... $F FAILED!!!!!!! $N"
    else
        echo -e "$2 ..... $G SUCCESS  !!!!!!! $N"
    fi
}

for i in $@
do
    echo "Package to be installed: $i"
    dnf list installed $i &>>$LOG_FILE
    if [ $? -ne 0 ]
    then
        dnf install $i -y &>>$LOG_FILE
        VALIDATE $? "Installing $i"
    else
        echo "package $i already Installed .. $Y SKIPPING $N"
    fi
done



