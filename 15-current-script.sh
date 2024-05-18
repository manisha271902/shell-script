#!/bin/bash

COURSE="DevOps from current script"
echo "Before calling otehr script course : $COURSE"
echo "process ID of the shell script $$"

source ./16-other-script.sh

echo "AFter calling the other script course : $COURSE"