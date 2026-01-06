#!/bin/bash

# Ask for logname
echo "Enter your logname:"
read logname
home_dir="/home/$logname"

# Check if home exists
if [ ! -d "$home_dir" ]; then
    echo "Error: home directory for $logname does not exist"
    exit 1
fi

echo "Files and directories info in $home_dir"
ls -l "$home_dir"

# Copy files and directories to /tmp
backup_dir="/tmp/${logname}_backup"
mkdir -p "$backup_dir"

echo "Copying files and directories to $backup_dir"
cp -r "$home_dir"/* "$backup_dir" 2>/dev/null

# Show current processes
echo "Current processes"
ps -u "$logname"
