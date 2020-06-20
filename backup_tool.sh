#!/bin/bash

# Backs up selected file to backups folder if it exists

# Creates the 'bash_backups' folder if one is not already present
user=$(whoami)
if [ ! -d /home/$user/bash_backups ]; then
  mkdir -p /home/$user/bash_backups;
  echo "bash_backups folder created within /home/$user"
fi

echo "$user, enter the filename you wish to archive"
echo -n "--> "
read file

path="/home/drake/bash_backups"

echo "File $file copied to $path"
cp $file "$path"
