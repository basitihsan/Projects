#!/bin/bash
########################
# AUTHORE: ABDUL BASIT IHSAN
########################
#
#
#Define paths and filenames
backup_config_file="./archive/backup_config.txt"
backup_destination="./member"
backup_filename="backup_$(date +'%Y%m%d_%H%M%S').tar.gz"
source_directory="./archive"

#Check if the backup configuration file exists
if [ -f "$backup_config_file" ];
then
        echo "Backup configuration file found. proceeding with the backup"
else
        echo "Backup configuartion file not found . Exiting"
        exit 1
fi

#Read backup configuartion from the file (modify as per your config file format)
source "$backup_config_file"

#Perform the backup
tar -czf "$backup_destination/$backup_filename" "$source_directory" 2>/dev/null

#Check if the backup was successful
if [ $? -eq 0 ];
then
        echo "Backup completed successfully: $backup_destination/$backup_filename"
else
        echo "Backup failed. please check for error:"
        exit 1
fi
~                                                                                                                                                           ~             

