#!/bin/bash

tvservice -n | grep "device_name" &> /dev/null
if [ $? == 0 ]; then           #HDMI connected
  echo "HDMI Connected"
  amixer cset numid=3 2       #set HDMI as audio output
  sudo cat /boot/config.txt | grep "ignore_lcd=1" &> /dev/null
  if [ $? != 0 ]; then        #write ignore_lcd=1 and reboot
    sudo sh -c "echo 'ignore_lcd=1' >> /boot/config.txt"
    sudo reboot
  fi
else                          #HDMI disconnected
  echo "HDMI Disconnected"
  amixer cset numid=3 1       #set 3.5mm Headphone as audio output
  sudo cat /boot/config.txt | grep "ignore_lcd=1" &> /dev/null
  if [ $? == 0 ]; then        #delete ignore_lcd=1 and reboot
    sudo sed -i '/ignore_lcd=1/,$d' /boot/config.txt
    sudo reboot
  fi
fi
