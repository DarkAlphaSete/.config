#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bars
polybar main &

polybar currentTime &
ln -f -s /tmp/polybar_mqueue.$! /tmp/polybar-ipc-currentTime &

polybar devInfoSpawner &
ln -f -s /tmp/polybar_mqueue.$! /tmp/polybar-ipc-devInfoSpawner &

polybar devInfo &
ln -f -s /tmp/polybar_mqueue.$! /tmp/polybar-ipc-devInfo


sh $XDG_CONFIG_HOME/polybar/sleep.sh

echo cmd:show > /tmp/polybar-ipc-currentTime
sh $XDG_CONFIG_HOME/polybar/sleep.sh 0.1
echo cmd:show > /tmp/polybar-ipc-devInfoSpawner
sh $XDG_CONFIG_HOME/polybar/sleep.sh 0.1
echo cmd:hide > /tmp/polybar-ipc-devInfo

sh $XDG_CONFIG_HOME/polybar/open_devinfo_menus.sh


echo "Bars launched."
