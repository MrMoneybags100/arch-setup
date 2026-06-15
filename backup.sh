#!/bin/bash

set -e

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Backing up dotfiles..."


# KDE
mkdir -p "$ROOT_DIR/backup/dotfiles/kde"

# General KDE appearance
cp ~/.config/kdeglobals \
	"$ROOT_DIR/backup/dotfiles/kde/"

# Window management
cp ~/.config/kwinrc \
	"$ROOT_DIR/backup/dotfiles/kde/"

# Desktop layout
cp ~/.config/plasma-org.kde.plasma.desktop-appletsrc \
	"$ROOT_DIR/backup/dotfiles/kde/"

# Global shortcuts
cp ~/.config/kglobalshortcutsrc \
	"$ROOT_DIR/backup/dotfiles/kde/"

# Lock screen wallpaper set
cp ~/.config/kglobalshortcutsrc \
        "$ROOT_DIR/backup/dotfiles/kde/"


# BASH
mkdir -p "$ROOT_DIR/backup/dotfiles/bash"

# Bash alias's/customisation
cp ~/.bashrc \
	"$ROOT_DIR/backup/dotfiles/bash/"



echo "Dotfiles backup complete."

echo "Backing up misc files..."

mkdir -p "$ROOT_DIR/backup/wallpapers"
cp ~/Pictures/Wallpapers/*.jpg \
	"$ROOT_DIR/backup/wallpapers"

echo "Misc files backed up."
