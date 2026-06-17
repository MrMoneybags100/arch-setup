#!/bin/bash

set -e



echo "Restoring dotfiles from backup..."

cp -a "$ROOT_DIR/backup/dotfiles/." ~/

echo "Dotfiles restored."
