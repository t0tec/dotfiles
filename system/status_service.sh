#!/bin/sh
# usage: status_service SERVICE
#
# simple bash script: checks if the given service is running
SERVICE="$1"

if [ "`systemctl is-active $SERVICE`" != "active" ] ;
then

echo "$SERVICE service is not running"

read -p "Do you want to start $SERVICE service? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then  
  systemctl restart $SERVICE
  echo "$SERVICE was (re)started"
  exit 0
fi

else

echo "$SERVICE service is running"

fi

exit 0
