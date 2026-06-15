#!/bin/bash

set -e

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Putting misc files in place..."

mkdir -p ~/Pictures/Wallpapers
cp "$ROOT_DIR/backup/wallpapers.*.jpg" \
	~/Pictures/Wallpapers


echo "Misc files set in place."




