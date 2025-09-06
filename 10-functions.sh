#!/bin/bash


ID=$(id -u)
TIMESTAMP=$(date +%F-%H:%M:%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE() {
if [ $? is -ne 0]
then 
    echo "ERROR:: $2 of is failed"
    exit 1
else
    echo "$2 of is success"
fi

}
if [ $ID -ne 0]
then 
  echo "ERROR:: this is not the root user. Please run with root access"
  exit 1
else
   echo "you are root user"
fi

yum install mysql -y & >> $LOGFILE

VALIDATE $? "Installing MySQL"

yum install git -y & >> $LOGFILE

VALIDATE $? "Installing MySQL"
