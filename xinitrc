#!/bin/sh

# autocutsel - synchronize copy/paste buffer with X selection buffer
# autocutsel -fork &
#autocutsel &
#autocutsel -selection PRIMARY &

# load .Xresources file
#xrdb -load ~/.Xresources

# start DWM bar
slstatus &

# restore background
#nitrogen --restore &

~/.fehbg &

# start compositor
compton --config ~/.config/compton/compton.conf &

#while true;
#	do dwm &
#done
exec dwm

