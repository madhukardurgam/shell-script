#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
    echo "you are not a root user, you need superuser privilages to run the script"
    exit 1
fi

VALIDATE(){
if [ $? -ne 0 ]
then 
    echo "Installing is failure"
    exit 1
else
    echo "installation is success"
fi 

}
dnf list installed mysql
if [ $? -ne 0 ]
then 
    dnf install mysql -y
    VALIDATE()
else
    echo "already installed"
fi

dnf list installed git
if [ $? -ne 0 ]
then 
    dnf install git -y
    VALIDATE()
else
    echo "already installed"
fi