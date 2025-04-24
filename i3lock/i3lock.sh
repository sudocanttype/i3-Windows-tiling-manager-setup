#!/bin/bash
# PICTURE=/tmp/i3lock.png
# SCREENSHOT="scrot $PICTURE"

# BLUR="5x6"

# $SCREENSHOT
# convert $PICTURE -blur $BLUR $PICTURE
# i3lock -i $PICTURE
# rm $PICTURE


#Thanks to lokesh-krishna for this lock screen
IMAGE=$HOME/.config/polybar/lock-wallpaper.png

i3lock --nofork                 	\
    --ignore-empty-password		\
    \
    --indicator				\
    --indpos='2880:600' \
    --radius=200 \
    --ring-width=20 \
    --insidecolor=FF7823 \
    --line-uses-inside \
    --ringcolor=FACF1C \
    --ringvercolor=000000\
    --ringwrongcolor=bf616a		\
    --bshlcolor=5e81ac			\
    --keyhlcolor=a3be8c			\
    \
    --clock				\
    --timecolor=eceff4ff		\
    --timestr="%I:%M %p"		\
    --time-font="Calvin and Hobbes"	\
    --timesize=150			\
    --timepos="1400:875"		\
    --timecolor=2e3440ff		\
    \
    --datecolor=d8dee9ff		\
    --datestr="%A, %d %B"		\
    --datecolor=2e3440ff		\
    --date-font="Calvin and Hobbes"	\
    --datesize=95			\
    --datepos="1400:1000"	\
    \
    --verif-font="Calvin and Hobbes"	\
    --verifsize=150			\
    --veriftext="Welcome home!"		\
    --wrong-font="Calvin and Hobbes"	\
    --wrongsize=150			\
    --wrongtext="No Entry!"		\
    \
    --image=$IMAGE 

