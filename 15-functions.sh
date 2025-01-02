#!/bin/bash
DATE=$(date +"%Y-%m-%d %H:%M:%S")
LOG="package_installation _${DATE}.log"
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
    echo -e " $2 Installing is ${R} failure ${N}"
    exit 1
else
    echo -e "$2 installation is ${G} success ${N}"
fi 

}
dnf list installed mysql &>>$LOG
if [ $? -ne 0 ]
then 
    dnf install mysql -y &>>$LOG
    VALIDATE
else
    echo -e "already ${Y} installed ${N}"
fi

dnf list installed git &>>$LOG
if [ $? -ne 0 ]
then 
    dnf install git -y &>>$LOG
    VALIDATE
else
    echo -e "already ${Y} installed ${N}"
fi