#!/bin/bash

serverpid=`cat /opt/workspace/cloud9-service/cloud9.pid`

kill -9 $serverpid
