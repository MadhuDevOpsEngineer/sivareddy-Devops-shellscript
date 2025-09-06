#!/bin/bash
id=$(id-u)

if [ $id is -ne 0]
then 
    echo -e "$R ERROR:: Please run shell script with $N"
    exit 1
else
    echo "you are root user"
fi

echo "all arguments are passed $@"

