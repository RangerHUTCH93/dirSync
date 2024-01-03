#!/bin/bash

# Function to display Zenity file selection dialog and capture selected directory
get_directory() {
    local title=$1
    zenity --file-selection --directory --title="$title"
}

# Get source directory
source_directory=$(get_directory "Select Source Directory")
if [ -z "$source_directory" ]; then
    zenity --info --text="Operation canceled by the user."
    exit 0
fi

# Get target directory
target_directory=$(get_directory "Select Target Directory")
if [ -z "$target_directory" ]; then
    zenity --info --text="Operation canceled by the user."
    exit 0
fi

# Perform rsync operation
rsync -avu --delete "$source_directory/" "$target_directory/"

# Display success message
zenity --info --text="Synchronization completed from $source_directory to $target_directory."
