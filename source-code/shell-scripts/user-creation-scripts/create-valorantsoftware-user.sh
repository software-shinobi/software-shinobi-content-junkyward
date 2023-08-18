#!/bin/bash

reset;clear;

set -x;

sudo deluser valorantsoftware


log() {

echo $1
}

echo " ************************************************************************************************* "
echo " *** *** "
echo " *** Creates necessary users and groups for LAN *** "
echo " *** *** "
echo " *** @est 10.31.2017 *** "
echo " *** @perpurse creates users and group to be run on each server in the house. *** "
echo " *** @destructive? yes. Will delete the specifiers users and groups first, then recreate. *** "
echo " *** *** "
echo " ************************************************************************************************* "

origGroup="etc.groups.backup."
origGroupExt=".conf"

#file_name_groups_dated_backup=$origGroup`date --iso`$origGroupExt
#log "backup up the current /etc/groups content to the file: "$file_name_groups_dated_backup
#cat /etc/group > $file_name_groups_dated_backup
#cat $file_name_groups_dated_backup
#reset;clear;

userName="valorantsoftware"
groupID=2860
userID=2810
echo "Creating the $userName user"
sudo rm -rf /home/$userName
sudo deluser $userName

echo "creating the $userName group"
sudo delgroup $userName
sudo groupadd $userName --gid $groupID

sudo adduser -disabled-password --gecos "" --uid $userID --gid $groupID --shell /bin/bash $userName

log "users matching $userName"
cat /etc/passwd | grep -h $userName

log "groups matching $userName"
cat /etc/group | grep -h $userName

log "home directory matching $userName"
ls -l /home/ | grep -h $userName

echo "Finished creating the $userName user and group"
