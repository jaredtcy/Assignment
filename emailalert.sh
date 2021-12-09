#!/bin/bash
#To extract the logs from the given log file and save it in a .txt file with the current date/time
wget https://raw.githubusercontent.com/elastic/examples/master/Common%20Data%20Formats/apache_logs/apache_logs -O "log_file_$(date +"%Y_%m_%d_%I_%M_%p").txt"

#Specify a variable max_count to limit the maximum number of logs permitted to be only 100
max_count=100

#Count the number of Error codes 4xx and 5xx in the log file
count=$(grep 'HTTP/1.1" 4\|HTTP/1.1" 5' "log_file_$(date +"%Y_%m_%d_%I_%M_%p").txt" | wc -l)

#Specifying the criteria for the email to be triggered (i.e. Total 4xx and 5xx error codes in the file > max_count)
if [ "$max_count" -lt "$count" ] ; then

#Email template to be sent when above criteria is met
SUBJECT="WARNING: Number of Errors found in Apache logfile exceeds 100"

#This is a temp file which is created to store the email message

MESSAGE="/tmp/log2.txt"
TO="tanchaoyang93@outlook.com"
echo "ATTENTION: There are more than 100 errors found in the Apache logfile. Please check." >> $MESSAGE
echo  "Hostname: `hostname`" >> $MESSAGE
echo -e "\n" >> $MESSAGE
echo "+------------------------------------------------------------------------------------+" >> $MESSAGE
echo "Error messages in the log file as below" >> $MESSAGE
echo "+------------------------------------------------------------------------------------+" >> $MESSAGE
grep 'HTTP/1.1" 4\|HTTP/1.1" 5' "log_file_$(date +"%Y_%m_%d_%I_%M_%p").txt" >> $MESSAGE
mail -s "$SUBJECT" "$TO" < $MESSAGE
fi 
