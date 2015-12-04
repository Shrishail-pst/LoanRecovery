#!/bin/sh
#run jenkins server
sudo /etc/init.d/jenkins start

# What to backup. 
backup_files="/var/lib/jenkins"

# Where to backup to.
dest="/var/lib/jenkins/workspace"

# Create archive filename.
day=$(date +%A)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"

# Print start status message.
echo "Backing up $backup_files to $dest/$archive_file"
date
echo

# Backup the files using tar.
tar czf /tmp$dest/$archive_file /var/lib/jenkins

# Print end status message.
echo
echo "Backup finished"
date

# Long listing of files in $dest to check file sizes.
ls -lh $dest
