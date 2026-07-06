#!/bin/bash

set -e



echo "Updating system..."

sudo pacman -Syu --noconfirm

echo "System updated."


echo "Installing pacman packages..."

sudo pacman -S --needed --noconfirm \
	# Core Utilities
        git \
        github-cli \
        base-devel \
        nano \
	ripgrep \
	fd \
	fastfetch \
	wine \
	wine-mono \
	wine-gecko \
	winetricks \
	# KDE Applications
        konsole \
        dolphin \
        gwenview \
	# Standard Tooling
	firefox \
	thunderbird \
	libreoffice-still \
	# development Stuff
        gcc \
        cmake \
        python \
        nodejs \
        npm \
        docker \
        docker-compose \
        docker-buildx \
	ollama \
	# Media/Entertainment
        discord \
        spotify-launcher \
	steam

echo "Pacman  packages installed."
