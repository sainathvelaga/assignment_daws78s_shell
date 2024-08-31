#!/bin/bash

DATE=$(date +"%d-%b-%Y")

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

SOURCE_DIRECTORY=/etc/nginx
DESTINATION_DIRECTORY=/tmp/

tar -zcvf HTML-$DATE.tgz $SOURCE_DIRECTORY
mv *.tgz $DESTINATION_DIRECTORY
echo "Backup finished"






