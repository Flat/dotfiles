#! /bin/bash
if [ $1 == "1" ]
  then
    xwinwrap -g 1920x1080+0+0 -b -nf -ov -ni -debug -- mpv --wid WID --mute=yes --loop $2
fi
if [ $1 == "2" ]
  then
    xwinwrap -g 1920x1080+1920+0 -b -nf -ov -ni -debug -- mpv --wid WID --mute=yes --loop $2
fi