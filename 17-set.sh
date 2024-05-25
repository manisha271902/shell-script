#!/bin/bash

set -e 


failure() {
#   local lineno=$1
#   local msg=$2
  echo "Failed at $1: $2"
}
trap 'failure ${LINENO} "$BASH_COMMAND"' ERR

USERID=$(id -u) #nospcae here
if [ $USERID -ne 0 ] #ikada space lekunte error ochindhi
then
    echo "Please run  the script as root user"
    exit 1 #manually exit if error comes
else
    echo "You are a super user"
fi

dnf install mysqll -y

dnf install nginx -y

echo "is script proceeding"
