#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then

    echo "Please run the script with sudo access..." 
     exit 1
fi

echo "Proceeding...."

dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "nginx intallation is failed...."

    exit 1

else
     echo "nginx installation is success..."

fi
dnf install mysqlll -y

if [ $? -ne 0 ]; then

    echo "mysql installation is failed..."
     exit 1
else 
    echo "mysql installation is Success..."

fi

echo "Still Proceeding...."

