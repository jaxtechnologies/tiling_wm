#!/bin/sh

# Get battery percentage
perc=$(cat /sys/class/power_supply/BAT0/capacity)
# Get status (Charging/Discharging)
status=$(cat /sys/class/power_supply/BAT0/status)

if [ "$status" = "Charging" ]; then
    echo " bat: ▲ $perc%"
elif [ "$status" = "Discharging" ]; then
    echo " bat: ▼ $perc%"
else
    echo " bat: ● $perc%"
fi

