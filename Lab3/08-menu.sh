#!/bin/bash

while true
do
    select choice in "ls" "ls -a" "exit"
    do
        case $REPLY in
            1)
                ls
                break
                ;;
            2)
                ls -a
                break
                ;;
            3)
                echo "Exiting..."
                exit 0
                ;;
            *)
                echo "Invalid choice"
                ;;
        esac
    done
done
