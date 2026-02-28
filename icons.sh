#!/bin/bash

# ranges: 
# Brightness	0–200	
# Saturation	0–200	
# Hue	0–200	0–200	

BASE="green.ico"

BRIGHTNESS=(40 50 60 70 80 90 100 110 120 130 140 150 160 170)
SATURATION=(40 60 80 100 120 140 150 160 170 180)
HUE=(0 10 20 30 40 50 60 70 80 90 100 110 120 130 140 150 160 170 180 190 200)

mkdir -p icons

for bi in {0..13}; do
  for si in {0..10}; do
    for hi in {0..20}; do
      B=${BRIGHTNESS[$bi]}
      S=${SATURATION[$si]}
      H=${HUE[$hi]}
      #OUT="icons/icon-b${B}-s${S}-h${H}.ico"
      OUT=$(printf "icons/icon-b%03d-s%03d-h%03d.ico" "$B" "$S" "$H")
      magick "$BASE" -alpha on -modulate $B,$S,$H "$OUT"
      echo "Generated $OUT"
    done
  done
done

