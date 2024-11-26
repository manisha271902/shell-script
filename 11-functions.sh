#!/bin/bash
USERID=$(id -u) #nospcae here
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
echo $SCRIPT_NAME
LOG_FILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

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
         echo "$2 ....FAILED!!!!!!"
     else
         echo "$2 ........SUCCESS!!!!!!!"
     fi
}

dnf install mysql -y &>>$LOG_FILE
VALIDATE $? "Installing SQL"

dnf install nginx -y &>>$LOG_FILE
VALIDATE $? "Installing nginx"


#run chesina prathisari log create aytadi ah /tmp folder lo script name tho