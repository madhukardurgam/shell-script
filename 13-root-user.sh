#!/bin/bash

#given user is root user or not
USERID=$(id -u)
if [ $USERID -ne 0 ];
then
    echo "you are root user"
else
    echo "You are not the root user to run the script"
fi