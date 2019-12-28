#!/bin/bash

jscal -s 3,1,0,2,2,1048544,1060977,1,0,33,33,-17895151,-16268319,1,0,33,33,-17895151,-16268319 /dev/input/js1

evdev-joystick --evdev /dev/input/by-id/usb-*-event-joystick --axis 0 --deadzone 40
