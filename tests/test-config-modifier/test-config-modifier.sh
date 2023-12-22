#!/bin/bash

# Target file to modify
file="config"

# Variable to modify
variable="osbuild"

# Regex pattern to match the variable and its value
pattern="^\s*${variable}=\"([^\"]*)\""

# Read the file content
content=$(<"$file")

# Find the matching line
if [[ $content =~ $pattern ]]; then
  value="${BASH_REMATCH[1]}"

  # Extract the base value and any existing suffix
  base_value="${value%%_*}"
  suffix="${value#*_}"

  # Determine the new suffix
  if [[ -z $suffix ]]; then
    new_suffix="_2"
  else
    new_suffix="$((suffix + 1))"
  fi

  # Construct the new value
  new_value="${base_value}${new_suffix}"

  # Replace the old value with the new value in the file content
  sed -i "s/$pattern/${variable}=\"${new_value}\"/" "$file"

  echo "Updated variable ${variable} to ${new_value} in file ${file}"
else
  echo "Variable ${variable} not found in file ${file}"
fi

