#!/bin/bash
#Makes sure that the monitor config is correct
MAINMONITOR=HDMI-0
RIGHTMONITOR=DVI-D-0
xrandr --output  $MAINMONITOR --auto --primary --left-of $RIGHTMONITOR 
xrandr --output $RIGHTMONITOR --rotate left --scale 1.5x1.5
