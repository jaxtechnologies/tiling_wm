#!/bin/sh
# Update disk usage for dwmblocks
free -h | awk '/^Mem:/ { print $3, "/ " $2 }' | sed s/i//g

