#!/bin/bash

backup_dir="$HOME/backup"
mkdir -p "$backup_dir"

for item in "$HOME"/*; do
    if [ -f "$item" ]; then
        cp "$item" "$backup_dir"
    fi
done

echo "Backup of files completed in $backup_dir"
