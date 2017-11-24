#! /bin/bash
tmpfile1=$(mktemp /tmp/wallscript.XXXXXX.png)
tmpfile2=$(mktemp /tmp/wallscript.XXXXXX.png)
convert "$1" -resize 1920x1080^ -gravity Center -extent 1920x1080 $tmpfile1
convert "$2" -resize 1920x1080^ -gravity Center -extent 1920x1080 $tmpfile2
convert $tmpfile1 $tmpfile2 +append ~/Pictures/Wallpapers/span_wall.png
cp $tmpfile2 ~/Pictures/Wallpapers/rightwall.png
rm $tmpfile1
rm $tmpfile2