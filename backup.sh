#!/bin/bash

set -e

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Backing up dotfiles..."


mkdir -p "$ROOT_DIR/backup/dotfiles/config"

# KDE
# General KDE appearance
cp ~/.config/kdeglobals \
	"$ROOT_DIR/backup/dotfiles/config/"

# Window management
cp ~/.config/kwinrc \
	"$ROOT_DIR/backup/dotfiles/config/"

# Desktop layout
cp ~/.config/plasma-org.kde.plasma.desktop-appletsrc \
	"$ROOT_DIR/backup/dotfiles/config/"

# Global shortcuts
cp ~/.config/kglobalshortcutsrc \
	"$ROOT_DIR/backup/dotfiles/config/"

# Lock screen wallpaper set
cp ~/.config/kglobalshortcutsrc \
        "$ROOT_DIR/backup/dotfiles/config/"


# BASH

# Bash alias's/customisation
cp ~/.bashrc \
	"$ROOT_DIR/backup/dotfiles/"



echo "Dotfiles backup complete."

echo "Backing up misc files..."

mkdir -p "$ROOT_DIR/backup/wallpapers"
cp ~/Pictures/Wallpapers/*.jpg \
	"$ROOT_DIR/backup/wallpapers"

echo "Misc files backed up."
