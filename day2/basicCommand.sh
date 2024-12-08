#!/bin/bash

####################################################
#
# Author: Saqlain 
# Date: 08/dec/2024
#
# Commands on grep pipe and awk 
#
# Version V1
#
#####################################################

set -x
set -e
set -o pipefail

# Example: List processes containing "ssh" and show their PIDs
echo "Listing processes containing 'ssh':"
ps -ef | grep ssh | awk '{print $2, $8}'

# Example: Filter processes containing "bash" and sort by PID
echo "Filtering 'bash' processes and sorting by PID:"
ps -ef | grep bash | awk '{print $2, $8}' | sort -n


