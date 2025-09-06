#!/bin/bash
id=$(id-u)

TIMESTAMP=$(date +%F)
LOGFILE="/tmp/$0
echo "script started executing & >> $LOGFILE"
VALIDATE(){
    if [ $1 -ne 0]
    then
      echo -e "$2.. $R failed "
    else
      echo -e "$2 ... SUCCESS "
    fi
}
if [ $id -ne 0]
then 
    echo -e "$R ERROR:: Please run shell script with "
    exit 1
else
    echo "you are root user"
fi

#echo "all arguments are passed $@"
for package in $@
do 
  yum list installed $package & >> $LOGFILE
  if [ $? -ne 0]
  then
  yum install $package -y & >> $LOGFILE
  VALIDATE $? "installation of $package"
  else
    echo -e "$package is already installed. skipped"
done
