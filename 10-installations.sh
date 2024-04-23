#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then    
    echo "Please run this script with root access."
    exit 1 #manually exit if error comes.
else 
echo "You are super user."
fi

dnf install mysql -y

if [ $? -ne 0 ]
then 
    echo "Installations of mysql...FAILURE"
    exit 1
else
    echo "Installations of mysql....SUCCESS"
fi

dnf install git -y

if [ $? -ne 0 ]
then
    echo ""installation of git....FAILURE"
    exit 1
else
     installation of git...SUCCESS
     

echo "is script proceeding?"