#!/bin/bash

for user in $(cut -d: -f1 /etc/passwd); do
    mail "$user" < 05mtemplate 2>/dev/null
done

echo "Mail sent to all users"
