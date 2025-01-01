#!/bin/bash

#insatlling mysql
#check wheather the mysql is installed or not
#if package is installed check wheather the user have the root access or not if not throw the error
#if the user is haves root access then install the mysql
# for the git also same procedure

dnf list installed mysql
if [ $? -ne 0];
then
    echo "Package is not installed"
else
    echo "Package is already installed"
fi
USERID=$(id -u)
if [ $? -ne 0];
then
    echo "Need the root access to run the script command"
    exit 1
else
    echo "You have the access to run the script"
fi
dnf install mysql -y
if [ $? -ne 0];
then
    echo "Package is not installed"
else
    echo "Package is already installed"
fi