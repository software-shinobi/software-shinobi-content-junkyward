#!/bin/sh

##
## This script installs the digital hunter killer drone.
##     The scripts will be installed to /root/robot-process-killer/
##     The scripts will be automated via cron job configuration
##
## Questions or issues? Email me here:
##
##     the.software.shinobi@gmail.com
##

set -x 

set -e

##

## reset;

## clear;

## Navigate to the robot-killer-home-directory

cd source-code

##

mkdir -p /root/robot-process-killer/

ls -lha /root/robot-process-killer/

##

cp *.* /root/robot-process-killer/

ls -lha /root/robot-process-killer/

## 

cd /root/robot-process-killer/

chmod +x *.sh

ls -lha

##

{ crontab -l -u root; echo '* * * * * /root/robot-process-killer/robot-kill-target-system-processes.sh >/dev/null 2>&1'; } | crontab -u root -

##

crontab -l

##

echo
echo "finished installing robot and configuring cron".
echo

