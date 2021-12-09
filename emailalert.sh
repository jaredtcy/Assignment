# vi /opt/scripts/os-log-alert.sh
#!/bin/bash
#Set the variable which equal to zero
wget https://raw.githubusercontent.com/elastic/examples/master/Common%20Data%20Formats/apache_logs/apache_logs -O "log_file_$(date +"%Y_%m_%d_%I_%M_%p").txt"
max_count=100
count=$(grep 'HTTP/1.1" 4\|HTTP/1.1" 5' log_file.txt | wc -l)
if [ "$max_count" -lt "$count" ] ; then
SUBJECT="WARNING: Number of Errors found in Apache logfile exceeds 100"
MESSAGE="/tmp/log2.txt"
TO="tanchaoyang93@outlook.com"
echo "ATTENTION: There are more than 100 errors found in the Apache logfile. Please check." >> $MESSAGE
echo  "Hostname: `hostname`" >> $MESSAGE
echo -e "\n" >> $MESSAGE
echo "+------------------------------------------------------------------------------------+" >> $MESSAGE
echo "Error messages in the log file as below" >> $MESSAGE
echo "+------------------------------------------------------------------------------------+" >> $MESSAGE
grep 'HTTP/1.1" 4\|HTTP/1.1" 5' log_file.txt >> $MESSAGE
mail -s "$SUBJECT" "$TO" < $MESSAGE
fi 
