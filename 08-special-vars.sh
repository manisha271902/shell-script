#!/bin/bash

echo "All Variables are : $@"
echo "NO of variables passed are : $#"
echo "Script Name: $0"
echo "Current Working directory : $PWD"
echo "Home directory of current user : $HOME"
echo "WHich user is running this script : $USER"
echo "Hostname : $HOSTNAME"
echo "PRocess Id of the current shell script: $$"
sleep 60 & #cmnd ni background ki papiyali ante &
echo "Process ID of the last background command : $!"