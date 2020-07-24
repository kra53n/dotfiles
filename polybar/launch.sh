#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Waiting for the processes to complete
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Running Polybar with the standard configuration file
#echo "---" | tee -a /tmp/polybar1.log
#polybar config >>/tmp/polybar1.log 2>&1 &
polybar config

echo "Polybar launched..."
