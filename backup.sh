#!/bin/bash

SOURCE="$1"
BACKUP_DIR="backups"

if [[ -z "$SOURCE" ]]; then
    echo "Usage: bash backup.sh <file-or-folder>"
    exit 1
fi

if [[ ! -e "$SOURCE" ]]; then
    echo "Source does not exist."
    exit 1
fi

mkdir -p "$BACKUP_DIR"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
NAME=$(basename "$SOURCE")

if cp -r -- "$SOURCE" "$BACKUP_DIR/${NAME}_${TIMESTAMP}"; then
    echo "Backup created successfully!"
    echo "Location: $BACKUP_DIR"
else
    echo "Backup failed."
    exit 1
fi