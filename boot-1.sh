#echo "(Sym)Linking from host $spicetype..."
#while IFS="" read -r p || [ -n "$p" ]
#do
#  
#done < distros.txt
## from https://stackoverflow.com/a/1521498/5623661 and /media/daniella/B/git/Floflis/Floflis/Utilities/zombiespices

#!/bin/bash

# Read distros from the file
distros=()
while IFS= read -r line; do
    distros+=("$line")
done < distros.txt

# Count the number of distros
num_distros=${#distros[@]}

# Create the dialog options string
options_string=""
for i in $(seq 1 $num_distros); do
    options_string="$options_string $i '${distros[$i-1]}'"
done

# Display the dialog menu
choice=$(dialog --clear --backtitle "Backtitle here" --title "Title here" --menu "Choose one of the following distros:" 15 40 $num_distros $options_string)

# Check if a valid option was selected
if [ -n "$choice" ]; then
    selected_distro="${distros[$choice-1]}"
    echo "You selected: $selected_distro"

    # Now you can use the $selected_distro variable in your script
    # Example usage:
    echo "Working on distro: $selected_distro"
    cd "$selected_distro"
    # ...other commands using $selected_distro
else
    echo "No distro selected."
fi

