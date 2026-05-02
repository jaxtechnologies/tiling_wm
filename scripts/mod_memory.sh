#!/bin/sh
# Update disk usage for dwmblocks
free -h | awk 'NR==2 {printf "mem: %s/%s", $3, $2}' | sed s/i//g

