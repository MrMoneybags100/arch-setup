#!/bin/bash

set -e



echo "Updating system..."

sudo pacman -Syu --noconfirm

echo "System updated."


echo "Installing pacman packages..."

packages=(
	# Core Utilities
        git
	github-cli
        base-devel
        nano
	ripgrep
	fd
	fastfetch
	wine
	wine-mono
	wine-gecko
	winetricks
	# KDE Applications
        konsole
        dolphin
        gwenview
	# Standard Tooling
	firefox
	thunderbird
	libreoffice-still
	# development Stuff
        gcc
        cmake
        python
        nodejs
        npm
        docker
        docker-compose
        docker-buildx
	ollama
	# Media/Entertainment
        discord
        spotify-launcher
	steam
)
sudo pacman -S --needed --noconfirm "${packages[@]}"


echo "Pacman  packages installed."
