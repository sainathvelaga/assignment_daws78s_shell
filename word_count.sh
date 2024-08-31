
#write a shell script that reads a text file and count occurrences of each word and display 
#top most words along with their counts

#!/bin/bash
#Desc: Find out frequency of words in a file

if [ $# -ne 1 ];
then
  echo "Usage: $0 filename";
  exit -1
fi

filename=$1
egrep -o "\b[[:alpha:]]+\b" $filename | \

awk '{ count[$0]++ }
END {printf("%-14s%s\n","Word","Count") ;
for(ind in count)
{ printf("%-14s%d\n",ind,count[ind]); }
}'
