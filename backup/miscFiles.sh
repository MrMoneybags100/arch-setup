#!/bin/bash

set -e



echo "Backing up misc files..."

mkdir -p "$ROOT_DIR/backup/miscFiles/Pictures/Wallpapers"
mkdir -p "$ROOT_DIR/backup/miscFiles/Pictures/Icons"

cp -a ~/Pictures/Wallpapers/. "$ROOT_DIR/backup/miscFiles/Pictures/Wallpapers/"

cp -a ~/Pictures/Icons/. "$ROOT_DIR/backup/miscFiles/Pictures/Icons/"

echo "Misc files backed up."
