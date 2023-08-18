#!/bin/sh

##
## This script lists the running processes related to the robot
##     This script is for local monitoring and verification.
##
## Questions or issues? Email me here:
##
##     the.software.shinobi@gmail.com
##

##set -x 

##set -e

##

watch -n 1 'ps aux | grep robot'
