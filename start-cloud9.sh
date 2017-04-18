#!/bin/bash

# Get IP address
address=$(/sbin/ifconfig enp0s8 | grep inet | cut -d: -f2 | awk '{print $2}')

# Command to start C9
cmd="/usr/bin/node /opt/c9sdk/server.js -l $address -p 8080 -w /opt/workspace -a steve:steve"
#$cmd &
$cmd &>/dev/null &disown
#$cmd

PID=$!
echo $PID > /opt/workspace/cloud9-service/cloud9.pid
