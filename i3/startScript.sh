#!/bin/bash
#Makes sure that the monitor config is correct
MAINMONITOR=HDMI-1
RIGHTMONITOR=DVI-D-1
LEFTMONITOR=DP-3
# xrandr --output  $MAINMONITOR --primary 
# xrandr --output $LEFTMONITOR --left-of $MAINMONITOR 
# xrandr --output $RIGHTMONITOR --right-of $MAINMONITOR --rotate left --scale 1.5x1.5



xrandr --output $LEFTMONITOR --scale 1.5x1.5 --pos 0x0
xrandr --output  $MAINMONITOR --primary --pos 2880x0
xrandr --output $RIGHTMONITOR --pos 6720x0 --rotate left --scale 1.5x1.5
