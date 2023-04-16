#!/bin/bash

# Generate a unique ID for the backup
BACKUP_ID=$(date +%s)-$(uuidgen | cut -c-8)

# Switch to media directory
cd /media

# Create external and backups directory
mkdir -p /media/external-drive/backups

# Backing up the server and saving the file in tar with unique ID
BACKUP_DIR=/media/external-drive/backups
FILENAME=$BACKUP_DIR/home-backup-$BACKUP_ID.tar.gz

tar -cvzf $FILENAME /home/ubuntu
