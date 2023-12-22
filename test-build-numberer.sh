#!/bin/bash

# Get the current year and extract the last two digits
current_year=$(date +%Y)
last_two_digits=${current_year: -2}

# Get the current month number, padded with a leading zero if needed
current_month=$(date +%m)

# Join the last two year digits and month number
combined_value="$last_two_digits$current_month"

# Print the combined value
echo $combined_value

