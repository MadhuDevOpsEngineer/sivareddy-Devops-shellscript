#!/bin/bash

NUMBER1=$1

if [ $NUMBER1 -gt 100 ]
then
    echo "Give number $NUMBER is greter than 100"
else
   echo "Give number $NUMBER is not greater than 100"
fi