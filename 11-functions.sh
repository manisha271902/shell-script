#!/bin/bash
USERID=$(id -u) #nospcae here

if [ $USERID -ne 0 ]
then
    echo "Please run the script with root user acacess"
    exit 1
else
    echo "youare a super user" 
fi

VALIDATE(){
     if [ $1 -ne 0 ] 
     then
         echo "$2 ....SUCCESSSS!!!!!!"
     else
         echo "$2 ........FAILED!!!!!!!"
     fi
}






dnf install mysql -y
VALIDATE $? "Installing SQL"



dnf install nginx -y
VALIDATE $? "Installing nginx"
