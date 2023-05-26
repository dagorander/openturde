#!/bin/ksh

BASE_FOLDER=$(pwd)

cd $BASE_FOLDER/dmenu-5.1
make clean

cd $BASE_FOLDER/dwm-6.3
make clean

cd $BASE_FOLDER/slock-1.5
make clean

cd $BASE_FOLDER/slstatus
make clean

cd $BASE_FOLDER/st-0.8.5
make clean