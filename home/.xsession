#!/bin/ksh -l

# Simulate "login shell"
. ~/.profile
. ~/.kshrc

sxhkd &
slstatus &
picom &
feh --bg-fill ~/Pictures/Wallpapers/3by2/cityscape-synthwave-2-3840??2160.jpg &
dwm
