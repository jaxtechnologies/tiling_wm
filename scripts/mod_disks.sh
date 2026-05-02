#!/bin/sh
# Get disk usage for root, show percentage used and free space
df -h / | awk 'NR==2 {printf "sda2: %s/%s (%s)", $3, $2, $5}'

