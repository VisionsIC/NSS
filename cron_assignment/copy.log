#!/bin/bash
now=$(date + "%T")
echo "Current Time : $now"

cd /media/sf_sandbox/cron_files/cron_log
for filename in *.log; do
    newFileName="old_$filename"
    echo $filename $newFileName

    cp $filename ../cron_history/$newFileName
    #rm $filename
done