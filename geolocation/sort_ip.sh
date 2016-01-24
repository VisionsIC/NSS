#!/bin/bash
#comment

#STEP 1 - The 5 variables below define each command to read each access log file and output just the IP addresses.

a=(cat /media/sf_sandbox/logs/access_log.log |awk '{print $1}' |sort)
b=(cat /media/sf_sandbox/logs/access_log_01.log |awk '{print $1}' |sort)
c=(cat /media/sf_sandbox/logs/access_log_02.log |awk '{print $1}' |sort)
d=(cat /media/sf_sandbox/logs/access_log_03.log |awk '{print $1}' |sort)
e=(cat /media/sf_sandbox/logs/access_log_04.log |awk '{print $1}' |sort)

#STEP 2 - Below "variable f" adds together the output result of each command of the STEP 1 variables.

f=($a + $b + $c + $d + $e)

#STEP 3 - Below "variable g" sorts through the output list of IP addresses and eliminates the duplicates.

g=(cat /media/sf_sandbox/logs/ip_sorted.txt |awk '!x[$0]++' ip_sorted.txt)

#STEP 4 - Below "variable g" outputs the final result list of unique IP addresses.

echo '$g' ip_sorted.txt

#STEP 5 - The below curl command reads the IP address and outputs the final result information in json format.

curl ipinfo.io/5.254.144.88

{
  "ip": "5.254.144.88",
  "hostname": "No Hostname",
  "city": "",
  "region": "",
  "country": "SE",
  "loc": "59.3294,18.0686",
  "org": "AS42708 Portlane AB"
}

#My Question is, is there a way I can create a string and concatenate it to loop through each IP address in the ip_sorted.txt to output the results of all the IP addresses
using the curl command? Finally, place the results in a .json file.