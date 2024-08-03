#!/bin/bash

reset

clear

##

set -e

#set -x

##

sudo deluser valorantsoftware

log() {

    echo $1

}


origGroup="etc.groups.backup."
origGroupExt=".conf"

##

userName="valorantsoftware"

groupID=2860

userID=2810

##

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
