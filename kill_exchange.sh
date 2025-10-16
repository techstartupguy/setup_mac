#!/bin/bash

# Thresholds in KB (1 MB = 1024 KB)
RSS_THRESHOLD=50000     # ~50 MB real RAM
VSZ_THRESHOLD=420000000    # ~1 GB virtual size

while true; do
    ps -axo pid,args,vsz,rss | grep -i ExchangeSync | grep -v grep | while read pid args vsz rss; do
        if [[ $rss -gt $RSS_THRESHOLD || $vsz -gt $VSZ_THRESHOLD ]]; then
            echo "$(date): Killing ExchangeSyncd (PID $pid, VSZ=${vsz}, RSS=${rss})"
            kill -9 $pid
        fi
    done
    sleep 3600  # wait 1 hour before checking again
done