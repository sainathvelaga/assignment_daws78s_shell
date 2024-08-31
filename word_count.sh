
#write a shell script that reads a text file and count occurrences of each word and display 
#top most words along with their counts

grep -o '\w*' /home/ec2-user/assignment_daws78s_shell/sample.txt | sort | uniq -c | sort -nr
