#!/bin/bash

for file in files/*; do
  filename=$(basename "$file")
  first_char="${filename:0:1}"
  lower_char=$(echo "$first_char" | tr 'A-Z' 'a-z')
  if [ -d "$lower_char" ]; then
    mv "$file" "$lower_char/"
  fi
done