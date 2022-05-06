#!/bin/bash

## Script for launching polybar 
## Add This to your windows manager startup files

# Terminate already running bar instances
killall -q polybar

# Wait until the process have been shutdown
while pgrep -u $UID x polybar > /dev/null; do sleep 1; done

# Launch bar on primary monitor 
polybar -c ~/.config/polybar/config main &

echo "Bar launched..."