#!/bin/bash

# Check if the script is provided with the root directory argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <root_dir>"
    exit 1
fi

# Get the root directory from the script argument
ROOT_DIR="$1"

# Loop through subdirectories in the root directory
for dir in "$ROOT_DIR"/*/; do
    # Extract the directory name from the path
    dir_name=$(basename "$dir")
    
    # Create the zip file name
    zip_file="$dir_name.zip"
    
    # Create a zip file for the directory
    zip -r "$zip_file" "$dir_name"
done



###USAGE###
# chmod +x create_zips_for_directories.sh
# ./create_zips_for_directories.sh /path/to/root/dir
