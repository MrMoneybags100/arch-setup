#!/usr/bin/env bash

set -e

for file in packages/*.txt
do
	echo ""
	echo "Installing packages from  $file"
	
	while read -r pkg
	do
		[[ -z "$pkg" ]] && continue
		sudo pacman -S --needed --noconfirm "$pkg"
	done < "$file"
done
