#!/bin/bash

while true; do
    clear
    echo "===== FILE MANAGER ====="
    echo "1. List files"
    echo "2. Create folder"
    echo "3. Create file"
    echo "4. Show current directory"
    echo "5. Back"

    read -p "Choose: " choice

    case "$choice" in
        1)
            ls -lah
            read -p "Press Enter..."
            ;;
        2)
            read -p "Folder name: " name
            mkdir -p -- "$name"
            echo "Folder created."
            sleep 1
            ;;
        3)
            read -p "File name: " name
            touch -- "$name"
            echo "File created."
            sleep 1
            ;;
        4)
            pwd
            read -p "Press Enter..."
            ;;
        5) break ;;
        *) echo "Invalid choice"; sleep 1 ;;
    esac
done