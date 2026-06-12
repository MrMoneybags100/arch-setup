#!/bin/bash

set -e

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Backing up dotfiles..."

# KDE
mkdir -p "$ROOT_DIR/dotfiles/kde"

cp ~/.config/kdeglobals \
	"$ROOT_DIR/dotfiles/kde/"

cp ~/.config/kwinrc \
	"$ROOT_DIR/dotfiles/kde/"

cp ~/.config/plasma-org.kde.plasma.desktop-appletsrc \
	"$ROOT_DIR/dotfiles/kde/"

cp ~/.config/kglobalshortcutsrc \
	"$ROOT_DIR/dotfiles/kde/"

cp ~/.config/kwinrc \
        "$ROOT_DIR/dotfiles/kde/"

# Git
mkdir -p "$ROOT_DIR/dotfiles/git"

cp ~/.gitconfig \
	"$ROOT_DIR/dotfiles/git/"

# Bash
mkdir -p "$ROOT_DIR/dotfiles/bash"

cp ~/.bashrc \
	"$ROOT_DIR/dotfiles/bash/"


echo "Dotfiles backup complete."
