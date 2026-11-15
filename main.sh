#!/bin/bash

while true; do
    clear
    echo "=========================="
    echo "      SHELL PROJECTS"
    echo "=========================="
    echo "1. Calculator"
    echo "2. System Information"
    echo "3. File Manager"
    echo "4. Exit"
    echo "=========================="

    read -p "Choose an option: " choice

    case "$choice" in
        1) bash calculator.sh ;;
        2) bash system-info.sh ;;
        3) bash file-manager.sh ;;
        4) echo "Goodbye!"; exit 0 ;;
        *) echo "Invalid option"; sleep 2 ;;
    esac
done