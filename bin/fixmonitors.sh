#!/bin/sh
xrandr --output HDMI-1 --primary --auto --left-of DVI-I-1
xrandr --output DVI-I-1 --auto --right-of HDMI-1
gsettings set org.gnome.desktop.background picture-uri file:///home/flat/Pictures/Wallpapers/span_wall.png
gsettings set org.gnome.desktop.background picture-options spanned
