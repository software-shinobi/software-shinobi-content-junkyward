#!/bin/sh

##
## This script is a digital hunter killer drone
##     to terminate target application processes
##     on the local system
##
## Questions or issues? Email me here:
##
##     the.software.shinobi@gmail.com
##

#set -e;
#set -x;

##

## reset;

## clear;

## Navigate to the robot-killer-home-directory

pwd

cd /root/robot-process-killer/

pwd

ls -lha

## Load the robot configuration from external file

echo
echo "BEGIN: load robot process killer configuration from file"
echo

. ./load-robot-process-killer-configuration.sh

echo
echo "END: load robot process killer configuration from file"
echo

## Load the robot functions and "do work" functionality from external file

echo
echo "BEGIN: load robot process killer capability from file"
echo

. ./load-robot-process-killer-capability.sh

echo
echo "END: load robot process killer capability from file"
echo

## Exeute the robot process killer functionality

echo
echo "starting the robot process killer"
echo

execute_robot_process_killer_capability
