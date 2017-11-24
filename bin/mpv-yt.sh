#! /bin/bash
tmpfile=$(mktemp /tmp/playlist.XXXXXX.txt)
find "$(pwd)" -type f -print0 | while IFS= read -r -d '' file; do
  printf "$file\n" >> $tmpfile
done
sort -r $tmpfile -o $tmpfile
mpv --playlist $tmpfile
rm $tmpfile