#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then

    echo "Please run the script with sudo access..." 
     exit 1
fi

echo "Proceeding...."

dnf install nginxxx -y

dnf install mysqlll -y

echo "Still Proceeding...."

