#!/bin/bash

username=$(whoami)
mailfile="/var/mail/$username"

while true; do
    if [ -s "$mailfile" ]; then
        echo "You have new mail!"
    else
        echo "No new mail."
    fi
    sleep 10
done
