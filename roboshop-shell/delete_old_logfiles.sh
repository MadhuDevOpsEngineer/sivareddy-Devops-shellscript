#!/bin/bash
SOURCE_DIR="/tmp/shellscript-logs"
if [ ! -d $SOURCE_DIR ]
then
  echo -e "Source directory $SOURCE_DIR does not exist"
fi

FILES_TO_DELETE=$(find $SOURCE_DIR -type f -mtime +14 -name "*.log")


while IFS= read -r line
do 
  echo "deleting file $line"

 rm -rf $line
done <<< $FILES_TO_DELETE