#!/bin/bash

# Creates a directory on the desktop called screens and takes
# screenshots of the display at regular intervals and saves the
# results in screens.

mkdir ~/Desktop/screens
prefix="$HOME/Desktop/screens/"
suffix=".jpg"
while true; do
	time=$(date +%r)
	filename="$prefix$time$suffix"
	screencapture -S -tjpg $filename
	echo "Captured screen at $time."
	sleep $1
done
exit 0