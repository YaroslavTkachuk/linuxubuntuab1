#!/bin/bash

#what to backup
backup_files="/home"

#where to backup
dest="/home/yaroslav/backupFolder"

#create archive
day=$(date +%A)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"

echo "Backing up $backup_files"
date
echo

tar czf $dest/$archive_file $backup_files

echo
echo "Finished"
date

ls -lh $dest
