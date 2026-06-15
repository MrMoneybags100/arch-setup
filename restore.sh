#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Starting Arch setup..."

bash "$SCRIPT_DIR/restore/system/services.sh"
bash "$SCRIPT_DIR/restore/packages/base.sh"
bash "$SCRIPT_DIR/restore/packages/aur.sh"
bash "$SCRIPT_DIR/restore/packages/media.sh"
bash "$SCRIPT_DIR/restore/configs/miscFiles.sh"
bash "$SCRIPT_DIR/restore/configs/dotFiles.sh"
bash "$SCRIPT_DIR/restore/configs/gitLogin.sh"

echo "Arch stup complete."

#PROMPT A REBOOT HERE <---
