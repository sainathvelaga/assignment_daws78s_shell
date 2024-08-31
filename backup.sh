#!/bin/bash

DATE=$(date +"%d-%b-%Y")

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

SOURCE_DIRECTORY=$1
DESTINATION_DIRECTORY=$2

tar -zcvf Backup-$DATE.tgz $SOURCE_DIRECTORY
mv *.tgz $DESTINATION_DIRECTORY
echo "Backup finished"






