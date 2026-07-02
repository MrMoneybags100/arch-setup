#!/bin/bash

set -e



echo "Restoring dotfiles from backup..."

cp -a "$BACKUP_DIR/dotfiles/." ~/

echo "Dotfiles restored."
