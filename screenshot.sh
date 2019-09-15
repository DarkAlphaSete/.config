#!/bin/bash
 
if [ "x$1" != "x" ]; then
	scrot '%F--%H-%M-%S.png' --silent --exec 'mv $f $$HOME/Documents/Art/Images/Screenshots/' --select --freeze;
else
	scrot '%F--%H-%M-%S.png' --silent --exec 'mv $f $$HOME/Documents/Art/Images/Screenshots/';
fi
