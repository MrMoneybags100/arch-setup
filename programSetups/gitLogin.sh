#!/bin/bash

set -e

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
