#!/bin/bash

#insatlling mysql
#check wheather the mysql is installed or not
#if package is installed check wheather the user have the root access or not if not throw the error
#if the user is haves root access then install the mysql
# for the git also same procedure
USERID=$(id -u)
if [ $USERID -ne 0 ];
then
    echo "Need the root access to run the script command"
    exit 1
fi
dnf list installed mysql
if [ $? -ne 0 ];
then
    dnf install mysql -y
    if [ $? -ne 0 ];
    then
        echo "package install is failure"
        exit 1
    else
        echo "package install is success"
else 
    echo "package is already installed"
fi