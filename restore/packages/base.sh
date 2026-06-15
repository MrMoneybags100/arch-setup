#!/bin/bash

set -e

echo "Updating system..."

sudo pacman -Syu --noconfirm

echo  "Installing base packages..."

sudo pacman -S --needed --noconfirm \
	git \
	github-cli \
	base-devel \
	nano \
	konsole \
	dolphin \
	gwenview \
	firefox 

echo "Installed base packages."
