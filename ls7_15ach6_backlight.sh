#!/bin/bash

while sleep 0.1s
do
    NV_BRIGHT=$(cat /sys/class/backlight/nvidia_wmi_ec_backlight/brightness)
    VALUE=$(bc -l <<< "scale=2; $NV_BRIGHT/100")
    xrandr --output eDP --brightness $VALUE
done
