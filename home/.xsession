#!/bin/ksh -l

# Simulate "login shell"
. ~/.profile
. ~/.kshrc

export MOZ_ACCELERATED=1 MOZ_WEBRENDER=1


# sxhkd &
# slstatus &
picom &
#feh --bg-fill ~/Pictures/Wallpapers/3by2/cityscape-synthwave-2-3840??2160.jpg &
feh --bg-fill ~/Pictures/Wallpapers/blackhole.jpg &
#dwm
cwm
