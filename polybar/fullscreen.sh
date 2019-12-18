#!/bin/bash	

FILE=/tmp/custom-is_i3_Fullscreen

if test -f "$FILE"; then
	echo cmd:hide > /tmp/polybar-ipc-devInfo
	echo cmd:show > /tmp/polybar-ipc-devInfoSpawner
	echo cmd:show > /tmp/polybar-ipc-currentTime
	
	rm $FILE

else

	echo cmd:hide > /tmp/polybar-ipc-devInfo
	echo cmd:hide > /tmp/polybar-ipc-devInfoSpawner
	echo cmd:hide > /tmp/polybar-ipc-currentTime

	touch $FILE
fi

sh $XDG_CONFIG_HOME/polybar/open_devinfo_menus.sh

