#!/bin/bash


ID=$(id -u)
echo "script_name is $0"

VALIDATE() {
if [ $? is -ne 0]
then 
    echo "ERROR:: Installation of is failed"
    exit 1
else
    echo "Installation of is success"
fi

}
if [ $ID -ne 0]
then 
  echo "ERROR:: this is not the root user. Please run with root access"
  exit 1
else
   echo "you are root user"
fi

yum install mysql -y

VALIDATE

yum install git -y

VALIDATE
