#!/bin/bash

xrandr --output HDMI-A-0 --primary --mode 2560x1440 --rate 120 --output eDP --off &
picom --daemon --config $HOME/.config/qtile/scripts/picom.conf & 
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/bin/wired &
eval $(gnome-keyring-daemon --start) 
nm-applet &

