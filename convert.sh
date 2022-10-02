#!/bin/bash

FILE=$1

OUTFILE=$(echo "$FILE" | rev | cut -f 2- -d '.' | rev)
OUTZIP="$OUTFILE.zip"
PTH=$(pwd)

pdftoppm -q -png -r 200 "$PTH/$1" "$PTH/$OUTFILE"

zip "$PTH/$OUTZIP" *.png

if test -f "$PTH/$OUTZIP"; then
    mv "$PTH/$OUTZIP" "$PTH/$OUTFILE.cbz" && rm "$PTH/*.png"
fi