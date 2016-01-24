#Created by:
#Aaron R. Wilson
#Full Sail University
#Networks and Server Structures
#201601-01
#Bash Assignment
#1/23/16

#!/bin/bash
#comment

#STEP 1 - Below define each command to read each access log file and output just the IP addresses.
#STEP 2 - Below sorts through the output list of IP addresses and eliminates the duplicates.
#STEP 3 - The below curl command reads the IP address and outputs the final result information mapping it out.

cat /media/sf_sandbox/logs/access_log.log |awk '{print $1}' |sort > ip_sort_step01.txt ;cat /media/sf_sandbox/logs/ip_sort_step01.txt |awk '!x[$0]++' > ip_sort_step02.txt && cat ip_sort_step02.txt | xargs -I% curl http://ipinfo.io/%/region > ip_regions_final.txt







