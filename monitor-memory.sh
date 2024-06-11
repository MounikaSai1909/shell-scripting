#Monitor memory of the server

#!/bin/bash

DISK_USAGE=(df -hT | grep xfs)
DISK_THRESHOLD=6


while IFS= read -r line 
do
    USAGE=$(echo $line | awk -F " " '{print $6}' | cut -d "%" -f1 )
    FOLDER=$(echo $line | awk -F " " '{print $NF}')
    if [ USAGE -ge $DISK_THRESHOLD ]
    then
        echo "$FOLDER is more than $DISK_THRESHOLD", Current Usage : $USAGE"
    fi
done <<< $DISK_USAGE