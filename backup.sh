#!/bin/bash

<< help

This is a shell scripts to take backups
can also be used with cron

help


source_dir="/home/chetan/scripts"
destination_dir="/home/chetan/scripts"

function create_backup {
	timestamp=$(date '+%Y-%m-%d-%H-%M-%S')
	backup_dir="${destination_dir}/backup_${timestamp}"

	zip -r "${backup_dir}.zip" "$source_dir"

	echo "Backup Completed"
}
create_backup $source_dir $destination_dir


