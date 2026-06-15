#!/bin/bash

set -e

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


echo "Restoring dotfiles..."

mkdir -p ~/.config

if [ -f "$ROOT_DIR/backup/dotfiles/.bashrc" ]; then
	cp -f "$ROOT_DIR/backup/dotfiles/.bashrc" ~/
fi

cp -rf "$ROOT_DIR/backup/dotfiles/config/"* ~/.config/

echo "Dotfiles restored."
