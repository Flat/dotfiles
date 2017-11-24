#!/bin/sh
xrandr --output HDMI-0 --primary --auto --left-of DVI-D-0
xrandr --output DVI-D-0 --auto --right-of HDMI-0
gsettings set org.gnome.desktop.background picture-uri file:///home/flat/Pictures/Wallpapers/span_wall.png
gsettings set org.gnome.desktop.background picture-options spanned