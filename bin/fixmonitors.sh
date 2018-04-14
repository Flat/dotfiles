#!/bin/sh
xrandr --output DVI-I-1 --primary --auto --left-of DP-0
xrandr --output DP-0 --auto --right-of DVI-I-1
gsettings set org.gnome.desktop.background picture-uri file:///home/flat/Pictures/Wallpapers/span_wall.png
gsettings set org.gnome.desktop.background picture-options spanned
