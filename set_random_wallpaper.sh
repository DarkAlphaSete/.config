#!/bin/sh

# Get a random wallpaper if no arguments were supplied
# Else, set a pre-set one
if [ -z "$1" ]; then
    find $HOME/Documents/Images/Wallpapers -type f |sort -R |tail -1 |while read file; do
		# Set the wallpaper
		feh --bg-fill "$file"
		# Make pywal recalculate the colours
		# and relaunch polybar because my jank breaks with pywal's refresh...
		wal -i "$file" -o $XDG_CONFIG_HOME/polybar/launch.sh
	done
else
	feh --bg-fill "$HOME/wallpaper.fallback"
	# Have pywal update
	wal -i "$HOME/wallpaper.fallback" -o $XDG_CONFIG_HOME/polybar/launch.sh
fi

