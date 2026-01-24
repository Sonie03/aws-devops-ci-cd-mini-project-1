#!/bin/bash

STATUS=$( systemctl is-active nginx)

if [ "$STATUS" != "active" ]; then
echo "Nginx service is NOT running"
exit 1
else
echo "Nginx is running"
fi
