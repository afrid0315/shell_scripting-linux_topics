#!/bin/bash
echo "Checking disk usage in Linux System"
disk_size = `df -h | grep /dev/loop4 | awk '{print $5}' | cut -d "%" -f 1`
# cut command going to cut using -d delimiter =%, -f we want first value1 = some number eg. 50% means removing % and giving only 50.
echo "$disk_size% of disk is in usage"
if [ $disk_size -gt 80 ];
then
    echo "Disk utilized is more than 80%, expand disk or delete files"
else
    echo "Enough disk is available"
fi