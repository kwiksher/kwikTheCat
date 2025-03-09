#!/bin/bash

# Function to check if a program is installed
function is_installed() {
  command -v "$1" >/dev/null 2>&1
}

# Check if imagemagick is installed
if ! is_installed "convert"; then
  echo "Error: ImageMagick is not installed. Please install it using your package manager."
  exit 1
fi

# Get the filename without extension
filename="${1%.*}"

# Check if a filename was provided
if [ -z "$filename" ]; then
  echo "Error: Please provide a filename as an argument."
  exit 1
fi

convert -bordercolor black -border 4 "$filename"@4x.png tmp_input.png
background=$(convert tmp_input.png -format %c histogram:info:- | sort -rn | head -n 1 | xargs echo | cut -f 2 -d' ')
convert tmp_input.png -fuzz 10% -transparent rgb$background tmp_1.png
convert tmp_1.png -fill 'rgb(255,255,255)' -colorize 100 -background 'rgb(0,0,0)' -alpha remove tmp_output.png

# Resize to 50% and rename to x@2x.png
convert -resize 50% "tmp_output.png" "$filename"_mask@2x.png
# Resize to 25% and rename to x.png
convert -resize 25% "tmp_output.png" "$filename"_mask.png

mv tmp_output.png "$filename"_mask@4x.png
rm tmp_input.png
rm tmp_1.png
echo "Successfully renamed and resized the image."