#!/bin/sh

FILE="HEAD"

if [ -f "$FILE" ]; then
  while IFS= read -r line; do
    # Set IFS to space to split by spaces
    IFS=' ' set -- $line
    for word in "$@"; do
      git show $word
      break
    done
  done < "$FILE"
else
  echo "File not found: $FILE"
fi
