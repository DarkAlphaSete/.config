#!/bin/sh

find $HOME/Documents/Art/Images/Wallpapers -type f |sort -R |tail -1 |while read file; do
	# Set the wallpaper
	feh --bg-fill "$file"
	# Make pywal recalculate the colours
	wal -i "$file"
done
