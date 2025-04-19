#!/bin/bash

SERVICE="nginx"

if ! systemctl is-active --quiet $SERVICE; then
  echo "$(date): $SERVICE is down. Restarting..." | systemd-cat -p warning
  sudo systemctl restart $SERVICE
else
  echo "$(date): $SERVICE is running fine."
fi
