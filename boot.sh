#!/bin/bash

# Prompt the user for the distro number
read -p "Please type the number of the distro you want to work on, according to its position in the distros.txt file: " distro_number

# Read the specified line from the file
selected_line=$(sed -n "${distro_number}p" distros.txt)

# Check if the line was retrieved successfully
if [ -z "$selected_line" ]; then
    echo "Error: Invalid distro number or empty file."
    exit 1
fi

# Store the line content in a variable
current_distro=$selected_line

# Now you can use the $distro_path variable in your script
echo "The selected distro path is: $current_distro"
export current_distro

# Example usage:
# echo "Working on distro: $distro_path"
# cd "$distro_path"
# # ...other commands using $distro_path
