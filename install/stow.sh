#!/bin/bash

# Check if argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

TARGET_DIR="$1"

# Check if the target directory exists
if [ ! -d "$TARGET_DIR" ]; then
    echo "Error: Directory '$TARGET_DIR' does not exist."
    exit 1
fi

# Iterate over items in the target directory and create symlinks in $HOME
cd "$TARGET_DIR" || exit 1
find . -mindepth 1 -exec sh -c '
    for item; do
        rel_path="${item#./}"
        target="$HOME/$rel_path"
        target_dir="$(dirname "$target")"

        # Ensure target directories exist
        if [ ! -d "$target_dir" ]; then
            mkdir -p "$target_dir"
        fi

        # Create symlink
        if [ ! -e "$target" ] && [ ! -L "$target" ]; then
            ln -s "$PWD/$rel_path" "$target"
            echo "Linked: $PWD/$rel_path -> $target"
        fi
    done
' sh {} +
