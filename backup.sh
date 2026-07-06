#!/bin/bash

set -e



export BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)" 
export BACKUP_DIR="$BASE_DIR/backup"
export RESTORE_DIR="$BASE_DIR/restore"


echo "Starting Backup..."

bash "$BACKUP_DIR/dotfiles.sh"

echo "Backup complete."

