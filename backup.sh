#!/bin/bash
TIMESTAMP=$(date +%F-%H-%M-%S)
DATE=$(date +"%d-%b-%Y")

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

SOURCE_DIRECTORY=$1
DESTINATION_DIRECTORY=$2

if [ $# -ne 2 ]
then
    echo -e "$R Please pass source and destination , Usage : Script_name source_dir dest_dir $N"
    exit 1
else
    echo -e "$G proceeding with the backup $N"
fi

tar -zcvf Backup-$TIMESTAMP.tgz $SOURCE_DIRECTORY
mv *.tgz $DESTINATION_DIRECTORY
echo "Backup finished"






