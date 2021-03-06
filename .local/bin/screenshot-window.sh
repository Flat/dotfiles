#!/bin/bash
current_win="$(xdotool getactivewindow)"
term_info="$(xwininfo -id "$current_win" | awk -F ': ' '/Width|Height|Absolute upper-left X|Absolute upper-left Y/ {printf $2 " "}')"
term_array=($term_info)
X=${term_array[0]}
Y=${term_array[1]}
WIDTH=${term_array[2]}
HEIGHT=${term_array[3]}
file=~/Pictures/Screenshots/$(date +%F-%T).png
maim -g "${WIDTH}x${HEIGHT}+${X}+${Y}" $file
xclip -selection clipboard -t image/png -i $file
