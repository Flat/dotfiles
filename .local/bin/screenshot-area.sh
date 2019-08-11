#! /bin/bash
file=~/Pictures/Screenshots/$(date +%F-%T).png
maim -s $file
xclip -selection clipboard -t image/png $file