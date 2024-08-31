#!/bin/bash
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
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

tar czf $DESTINATION_DIRECTORY $SOURCE_DIRECTORY
echo "Backup finished"

