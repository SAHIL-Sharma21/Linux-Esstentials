#!/bin/bash

# learning scheduling job in bash scripting
logfile=job_results.log

echo "The script ran at the following time: $(date)" > $logfile


:"
we use at command to schedule the job

cmd -> at 14:32 -f ./myscript.sh
"

# we can also schedule the job is by cron job
:"
we need to use full path to run the cron job

-> we need to use fully qualified path

like-> /usr/bin/echo 
-> /usr/bin/date

crontab -e -> we will go to cron tab file in /tmp
"

