#!/bin/bash

echo 'Declaring variables:'

HR=`echo $TIME | awk -F'[:]' '{print $1}'`
MIN=`echo $TIME | awk -F'[:]' '{print $2}'`

echo 'Done. Running mkdir'

mkdir -vv -p /.config/rclone/
mkdir -vv -p /jobs

echo 'Done. Downloading rclone.conf and cleanremotes'

wget https://raw.githubusercontent.com/88lex/cleanremotes/master/cleanremotes

echo 'Done. Copying files and setting perms'

cp rclone.conf /.config/rclone/
chmod +x cleanremotes

echo 'Done. Setting cron job for cleanremotes with filter/flag:' $COMMAND

echo "$MIN $HR * * * ./cleanremotes $COMMAND" > /jobs/crontab
supercronic /jobs/crontab