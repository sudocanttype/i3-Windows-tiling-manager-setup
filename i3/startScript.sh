#!/bin/bash
#Makes sure that the monitor config is correct
MAINMONITOR=HDMI-1
RIGHTMONITOR=DVI-D-1
LEFTMONITOR=DP-1
# xrandr --output  $MAINMONITOR --primary 
# xrandr --output $LEFTMONITOR --left-of $MAINMONITOR 
# xrandr --output $RIGHTMONITOR --right-of $MAINMONITOR --rotate left --scale 1.5x1.5



# amdgpu fails DP link training on DP-3 coming back from a DPMS power-off, which
# stalls the atomic commit shared by all three heads and blanks HDMI-1 and DVI-D-1
# too. Blank the screen instead of powering it down so the DP link is never dropped.
xset -dpms
xset s 600 600

xrandr --output $LEFTMONITOR --scale 1.5x1.5 --pos 0x0
xrandr --output  $MAINMONITOR --primary --pos 2880x0
xrandr --output $RIGHTMONITOR --pos 6720x0 --rotate left --scale 1.5x1.5
