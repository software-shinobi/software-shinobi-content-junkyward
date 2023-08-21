#!/bin/bash

#set -e
set -x

reset

clear

rm * 

cp archive/*  .

ls -lha

for f in *\ *; do mv "$f" "${f// /-}"; done

#for f in *\ *; do mv "$f" "${f//\'/-}"; done

ls -lha

rename 'y/A-Z/a-z/' *




rm *.srm
rm *.oops

reset;clear;

ls