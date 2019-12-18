#!/bin/bash	

echo cmd:toggle > /tmp/polybar-ipc-devInfo
echo cmd:toggle > /tmp/polybar-ipc-devInfoSpawner

sh $XDG_CONFIG_HOME/polybar/sleep.sh 0.1

sh $XDG_CONFIG_HOME/polybar/open_devinfo_menus.sh
