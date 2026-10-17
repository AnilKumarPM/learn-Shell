#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then

     echo "Please run the script with sudo Access"

     exit 1

fi

validate(){

    if [ $1 -ne 0 ]; then
     
     echo "$2....FAILED"

    else

     echo "$2...SUCCESS"
     exit 1
}

echo "Proceeding..."
dnf install nginx -y

validate $? "Installation"

dnf install mysql -y

validate $? "Mysql Installation"

echo "Still Proceeding....."