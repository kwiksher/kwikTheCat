#!/bin/bash
# filepath: /Users/ymmtny/Documents/GitHub/kwik-visual-code/develop/Solar2D/kwikTheCat/Solar2D/uppercase.sh

# Save current directory
currentDir=$(pwd)

# If a directory is passed as an argument, change to that directory.
if [ "$#" -gt 0 ]; then
  cd "$1" || { echo "Directory not found: $1"; exit 1; }
fi

shopt -s nullglob
for file in *; do
  # Skip if not a regular file
  [ -f "$file" ] || continue
  firstLetter="${file:0:1}"
  upperFirst="$(echo "$firstLetter" | tr '[:lower:]' '[:upper:]')"
  if [ "$firstLetter" != "$upperFirst" ]; then
    newname="${upperFirst}${file:1}"
    echo "Renaming '$file' to '$newname'"
    mv "$file" "$newname"
  fi
done

# Return to the original directory
cd "$currentDir"