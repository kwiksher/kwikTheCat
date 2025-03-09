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

# Rename to x@4x.png
mv "$1" "$filename@4x.png"

# Resize to 50% and rename to x@2x.png
convert -resize 50% "$filename@4x.png" "$filename@2x.png"

# Resize to 25% and rename to x.png
convert -resize 25% "$filename@4x.png" "$filename.png"

echo "Successfully renamed and resized the image."