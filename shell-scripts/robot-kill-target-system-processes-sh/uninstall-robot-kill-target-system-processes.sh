#!/bin/sh

##
## This script uninstalls the digital hunter killer drone.
##     The scripts uninstalls by removing all target cron job entries
##     The script DOES NOT delete any of the script files
##
## Questions or issues? Email me here:
##
##     the.software.shinobi@gmail.com
##

set -e;
set -x;

##

## reset;

## clear;

##

## Remove the target crontab entry

crontab -u root -l | grep -v '* * * * * /root/robot-process-killer/robot-kill-target-system-processes.sh >/dev/null 2>&1'  | crontab -u root -

## Show the current crontab entry

crontab -l
