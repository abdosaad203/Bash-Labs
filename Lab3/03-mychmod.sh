#!/bin/bash

for item in "$HOME"/*; do
    chmod +x "$item" 2>/dev/null
done

echo "Execute permission added to all files and directories in HOME"
