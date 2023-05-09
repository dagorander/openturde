#!/bin/ksh

# TODO: Move actual documentation to documentation folder
# TODO: migrate echo statements to printf with:
#       printf "Doing the thing ... "
#          ...
#       printf "Done\n"

set -e
echo "This script will exit if any command within has non-zero exit code"

###
# This script will copy various local configurations related to OpenTurde
 
rm -rf temp
echo "Deleted old temp file if it existed"

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
echo "TODO: Need a folder for non-home configs like:"
echo "      login.conf, sysctl.conf"
echo "   ...or maybe they should go separately applied in secondary script?"

cp $HOME/.kshrc ./temp/home/.kshrc
cp $HOME/.xsession ./temp/home/.xsession
echo "Copied home dotfiles"

cp $HOME/Documents/OpenTurde/setup_notes ./temp/home/Documents/OpenTurde/setup_notes
cp $HOME/Documents/OpenTurde/network_notes ./temp/home/Documents/OpenTurde/network_notes
cp $HOME/Documents/OpenTurde/general_notes ./temp/home/Documents/OpenTurde/general_notes
echo "Copied documentation"
