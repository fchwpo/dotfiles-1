#!/bin/bash
setxkbmap -layout us
xrandr -d :0 --output eDP1 --mode 1920x1080
xbacklight -set 1
i3lock --image=/tmp/wallpaper.png --beep
