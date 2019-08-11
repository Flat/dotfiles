#!/bin/bash
file=~/Pictures/Screenshots/$(date +%F-%T).png
maim $file
xclip -selection clipboard -t image/png -i $file