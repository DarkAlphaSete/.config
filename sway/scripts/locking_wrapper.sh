#!/bin/bash

COMMAND="swaylock -f -i $HOME/Pictures/Wallpapers/current"

if [[ $1 == "now" ]]; then
	$COMMAND
elif [[ $1 == "idle" ]]; then
	swayidle -w \
		timeout 300 "$COMMAND" \
		timeout 480 'swaymsg "output * dpms off"' \
			resume 'swaymsg "output * dpms on"' \
		before-sleep "$COMMAND"
fi
