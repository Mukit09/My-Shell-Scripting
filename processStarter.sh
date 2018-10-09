#!/bin/bash
process_name="MY_PROCESS"
process_number=`ps | grep $process_name | grep -v grep | wc -l`
PROCESS_NEEDED="1"
if [ "$process_number" != "$PROCESS_NEEDED" ];
then
    killall -9 dnrd
    sleep 3
    **Restart Your Process Here**
    echo "RESTARTED FROM SCRIPT!"
fi