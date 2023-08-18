#!/bin/bash

reset;

clear;

set -ex;

bash 00-constants.sh

bash 10-download-original-video.sh

bash 20-create-gif-from-video.sh

echo "done"
