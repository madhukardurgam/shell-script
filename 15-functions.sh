#!/bin/bash
R="\e[0;31m"
G="\e[0;32m"
Y="\e[0;33m"
N="\e[0m"
USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
    echo "you are not a root user, you need superuser privilages to run the script"
    exit 1
fi

VALIDATE(){
if [ $? -ne 0 ]
then 
    echo "Installing is ${R} failure ${N}"
    exit 1
else
    echo "installation is ${G} success ${N}"
fi 

}
dnf list installed mysql
if [ $? -ne 0 ]
then 
    dnf install mysql -y
    VALIDATE
else
    echo "already ${Y} installed ${N}"
fi

dnf list installed git
if [ $? -ne 0 ]
then 
    dnf install git -y
    VALIDATE
else
    echo "already ${Y} installed ${N}"
fi