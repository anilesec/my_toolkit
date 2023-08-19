#!/bin/bash
# This is a shebang. It specifies the interpreter used to execute the script.

# Check if the number of arguments provided is not equal to 1.
if [ "$#" -ne 1 ]; then
    # Print usage message if the condition is true.
    echo "Usage: $0 /path/to/directory"
    # Exit the script with a status of 1 indicating an error.
    exit 1
fi

# Assign the first argument passed to the script to the variable DIR_PATH.
DIR_PATH="$1"

# Start a loop to iterate over each item in the directory specified by DIR_PATH.
for dir in "$DIR_PATH"/*; do
    # Check if the current item (denoted by 'dir') is a directory.
    if [ -d "$dir" ]; then
        # Print the name of the directory without moving to a new line.
        echo -n "$dir: "
        # Get the size of the directory and print it.
        # 'du' gets the size, and 'cut' extracts just the size portion.
        du -sh "$dir" | cut -f1
    fi
    # End of the 'if' conditional block.
done
# End of the 'for' loop.



###USAGE###
# chmod +x directory_sizes.sh
# directory_sizes.sh /path/to/your/input/directory

