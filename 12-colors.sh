#!/bin/bash
USERID=$(id -u) #nospcae here
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
N="\e[0m"
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
         echo -e  "$2 ...$R FAILED!!!!!! $N"
     else
         echo -e "$2 ........$G SUCCESS!!!!!!! $N"
     fi
}






dnf install mysql -y &>>$LOG_FILE
VALIDATE $? "Installing SQL"



dnf install nginx -y &>>$LOG_FILE
VALIDATE $? "Installing nginx"


#run chesina prathisari log create aytadi ah /tmp folder lo script name tho