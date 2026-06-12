#!/bin/bash

set -e

#Configuring github auth

echo "Checking GitHub authentication..."

if gh auth status >/dev/null 2>&1; then
    echo "GitHub account already authenticated."
else
    echo "No GitHub authentication found."
    echo "Starting GitHub login..."

    gh auth login

    echo "Checking authentication result..."

    if gh auth status >/dev/null 2>&1; then
        echo "GitHub authentication successful."
    else
        echo "GitHub authentication failed."
        exit 1
    fi
fi


#Configuring git 

if git config --global user.name >/dev/null; then
    echo "Git name already configured."
else
    read -p "Enter your Git name: " git_name
    git config --global user.name "$git_name"
fi

if git config --global user.email >/dev/null; then
    echo "Git email already configured."
else
    read -p "Enter your Git email: " git_email
    git config --global user.email "$git_email"
fi

git config --global init.defaultBranch main

echo "Git configuration complete."
