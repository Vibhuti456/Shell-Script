#!/bin/bash

# This script is for checking the node health

set -x     # -x is a debug mode

df -h 

free -g

nproc

ps -aux | grep amazon | awk '{print $2}'
