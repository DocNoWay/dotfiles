#!/bin/bash

# Author	: Andreas Finck
# Date		: 30.03.2022
# Subject	: 

while true
do

      PIC=($(find ~/Bilder/backgrounds/dark/ -type f | shuf -n 1 ))

      #swaymsg output "eDP-1" bg "${PIC[0]}" fill > /dev/null
      swaymsg output "HDMI-A-3" bg "${PIC[0]}" fill > /dev/null
#      swaymsg output "HDMI-A-2" bg "${PIC[1]}" fill > /dev/null

      sleep 900

done
