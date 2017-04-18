#!/bin/bash

start() {
  exec /opt/workspace/cloud9-service/start-cloud9.sh 
  
}

stop() {
  exec /opt/workspace/cloud9-service/stop-cloud9.sh 

}

restart() {
  exec /opt/workspace/cloud9-service/stop-cloud9.sh 
  exec /opt/workspace/cloud9-service/start-cloud9.sh 
  
}

case $1 in
  start|stop|restart) "$1" ;;
esac
