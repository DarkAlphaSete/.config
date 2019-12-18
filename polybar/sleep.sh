#!/bin/bash

# Thanks, StackOverflow!
[ -z "$BASH_LOADABLES_PATH" ] &&
  BASH_LOADABLES_PATH=$(pkg-config bash --variable=loadablesdir 2>/dev/null)
enable -f sleep sleep

if ! [[ -z "$1" ]]; then
	sleep $1
else
	exit 1
fi
