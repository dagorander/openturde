#!/bin/ksh

# TODO: Move actual documentation to documentation folder
# TODO: migrate echo statements to printf with:
#       printf "Doing the thing ... "
#          ...
#       printf "Done\n"
# TODO: Validate that script is running in correct location

set -e
echo "This script will exit if any command within has non-zero exit code"

###
# This script will copy various local configurations related to OpenTurde
 
rm -rf temp
echo "Deleted old temp file structre if it existed"

mkdir temp
echo "Created base temp folder"

mkdir temp/home
mkdir temp/home/Documents/
mkdir temp/home/Documents/OpenTurde
mkdir temp/home/config
mkdir temp/home/config/alacritty
mkdir temp/home/config/helix
mkdir temp/home/config/lvim
mkdir temp/home/config/picom
mkdir temp/home/config/ranger
mkdir temp/home/config/sxhkd
echo "Created temp home folder structure"

mkdir temp/sys
mkdir temp/sys/etc
echo "Created temp sys folders"

cp $HOME/.kshrc ./temp/home/.kshrc
cp $HOME/.xsession ./temp/home/.xsession
echo "Copied home dotfiles"

cp $HOME/Documents/OpenTurde/setup_notes ./temp/home/Documents/OpenTurde/setup_notes
cp $HOME/Documents/OpenTurde/network_notes ./temp/home/Documents/OpenTurde/network_notes
cp $HOME/Documents/OpenTurde/general_notes ./temp/home/Documents/OpenTurde/general_notes
echo "Copied documentation"

cp $HOME/.config/alacritty/alacritty.yml ./temp/home/config/alacritty/alacritty.yml
echo "Copied alacritty config"
cp -R $HOME/.config/helix/* ./temp/home/config/helix
echo "Copied helix configurations"
cp -R $HOME/.config/lvim/* ./temp/home/config/lvim
echo "Copied lvim configurations"
cp $HOME/.config/picom/picom.conf ./temp/home/config/picom/picom.conf
echo "Copied picom.conf"
cp -R $HOME/.config/ranger/* ./temp/home/config/ranger
echo "Copied ranger configs"
cp $HOME/.config/sxhkd/sxhkdrc ./temp/home/config/sxhkd/sxhkgrc
echo "Copied sxhkd config"
