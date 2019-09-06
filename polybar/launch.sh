#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bars
polybar main &

#polybar bar1 &
#polybar bar2 &

echo "Bars launched."
