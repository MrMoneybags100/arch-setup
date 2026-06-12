#!/bin/bash

set -e

echo  "Installing development packages..."

sudo pacman -S --needed --noconfirm \
	gcc \
	python 

echo "Installed development packages."
