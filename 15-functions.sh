#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
    echo "you are not a root user, you need superuser privilages to run the script"
    exit 1
fi

dnf list installed mysql
if [ $? -ne 0 ]
then 
    dnf install mysql -y
    if [ $? -ne 0 ]
    then 
        echo "Installing sql is failure"
        exit 1
    else
        echo "installation  of sql is success"
    fi 
fi