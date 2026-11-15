#!/bin/bash

echo "===== SYSTEM INFORMATION ====="

echo "User: $USER"
echo "Home directory: $HOME"
echo "Current directory: $(pwd)"
echo "Date: $(date)"
echo "Operating system:"

if [[ -f /etc/os-release ]]; then
    grep '^PRETTY_NAME=' /etc/os-release
else
    uname -s
fi

echo "Shell: $SHELL"
echo "Architecture: $(uname -m)"

read -p "Press Enter to continue..."