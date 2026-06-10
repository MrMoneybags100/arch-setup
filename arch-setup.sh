#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Starting Arch setup..."

bash "$SCRIPT_DIR/system/services.sh"
bash "$SCRIPT_DIR/packages/base.sh"
bash "$SCRIPT_DIR/packages/aur.sh"
bash "$SCRIPT_DIR/packages/media.sh"

echo "Packages installed"
