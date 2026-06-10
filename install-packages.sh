#!/usr/bin/env bash

while read -r pkg
do
	sudo pacman -S --needed --noconfirm "$pkg"
done < packages/main.txt
