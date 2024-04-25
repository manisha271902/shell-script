#!/bin/bash
USERID=$(id -u) #nospcae here

if [ $USERID -ne 0 ]
then
    echo "Please run the script with root user acacess"
    exit 1
else
    echo "youare a super user" 

VALIDATE(){
     echo "exit status : $1"
     echo "HEYAA what are youdoing. : $2"
}






dnf install mysql -y
VALIDATE $? "Installing SQL"



dnf install nginx -y
VALIDATE $? "Installing nginx"

