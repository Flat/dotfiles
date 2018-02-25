#!/bin/sh
sudo virsh start win10
xrandr --output HDMI-0 --off
gsettings set org.gnome.desktop.background picture-uri file:///home/flat/Pictures/Wallpapers/rightwall.png
gsettings set org.gnome.desktop.background picture-options scaled
