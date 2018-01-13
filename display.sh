#!/bin/bash

tvservice -n | grep "device_name" &> /dev/null
if [ $? == 0]; then
  echo "HDMI Connected"
else
  echo "HDMI Disconnected"
fi
