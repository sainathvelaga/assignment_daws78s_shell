#!/bin/bash

DATE=$(date +"%d-%b-%Y")

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

SOURCE_DIRECTORY=$1
DESTINATION_DIRECTORY=$2

if [ $# -ne 2 ]
then
    echo -e "$R Usage : script_name source_directory destination_directory $N"
    exit 1
else
    echo -e "$G proceeding with the backup $N"
fi

tar -zcvf HTML-$DATE.tgz $SOURCE_DIRECTORY
mv *.tgz $2
echo "Backup finished"






