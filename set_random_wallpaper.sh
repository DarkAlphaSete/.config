#!/bin/sh

# Get a random wallpaper
find $HOME/Documents/Images/Wallpapers -type f |sort -R |tail -1 |while read file; do
	# Set the wallpaper
	feh --bg-fill "$file"
	# Make pywal recalculate the colours
	# and relaunch polybar because my jank breaks with pywal's refresh...
	wal -i "$file" -o $XDG_CONFIG_HOME/polybar/launch.sh
done
