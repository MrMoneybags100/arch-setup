#!/bin/bash

set -e



MANIFEST="$BACKUP_DIR/dotfiles.list"

echo "Backing up dotfiles..."

while IFS= read -r item || [[ -n "$item" ]]; do

    # Ignore blank lines and comments
    [[ -z "$item" || "$item" =~ ^# ]] && continue

    src="$HOME/$item"
    dst="$BACKUP_DIR/dotfiles/$item"

    if [[ -d "$src" ]]; then
        mkdir -p "$dst"
        cp -a "$src/." "$dst/"
    elif [[ -f "$src" ]]; then
        mkdir -p "$(dirname "$dst")"
        cp "$src" "$dst"
    else
        echo "Skipping missing: $item"
    fi

done < "$MANIFEST"

echo "Dotfiles backup complete."
