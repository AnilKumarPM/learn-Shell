#!/bin/bash

user_id=$(id -u)
logs_folder="/var/log/shell-practice"
logs_file="${logs_folder}/${0}.log"

if [ $user_id -ne 0 ]; then

     echo "Please run the script with sudo Access"

     exit 1
fi

mkdir -p $logs_folder 

echo "Script started execution  at : $(date +"%F %T") "

validate()
{

    if [ $1 -ne 0 ]; then
     
     echo "$2....FAILED"   | tee -a $logs_file

    else

     echo "$2...SUCCESS"   | tee -a $logs_file
     exit 1 
    fi
}

echo "Proceeding..."
dnf install nginx -y &>> $logs_file

validate $? "Installation"

dnf install mysql -y &>> $logs_file

validate $? "Mysql Installation"

echo "Still Proceeding....."

echo "Script  execution completed  at : $(date +"%F %T")"
