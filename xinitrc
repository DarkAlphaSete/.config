#!/bin/sh


xrandr &&
xrdb -merge ~/.Xresources &&
exec i3
