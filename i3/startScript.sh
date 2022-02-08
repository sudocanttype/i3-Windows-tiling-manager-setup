#!/bin/bash
#Makes sure that the monitor config is correct
xrandr --output HDMI-A-0 --auto --primary --left-of DisplayPort-1
xrandr --output DisplayPort-1 --rotate left
