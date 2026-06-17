#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"



echo "Starting Backup..."

bash "$SCRIPT_DIR/backup/miscFiles.sh"
bash "$SCRIPT_DIR/backup/dotfiles.sh"

echo "Backup complete."

