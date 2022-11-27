#!/bin/bash

OLD_BRIGHT=0

while sleep 0.1s
do
    NV_BRIGHT=$(cat /sys/class/backlight/nvidia_wmi_ec_backlight/brightness)

    AMD_BRIGHT=$(($NV_BRIGHT*255/100))

    if [ $OLD_BRIGHT -ne $AMD_BRIGHT ]; then

        echo $AMD_BRIGHT > /sys/class/backlight/amdgpu_bl0/brightness

    fi

    OLD_BRIGHT=$AMD_BRIGHT
done
