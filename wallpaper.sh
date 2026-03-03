#!/bin/bash

command -v fzf >/dev/null || { echo "fzf not installed"; exit 1; }

cd ~/Pictures/Wallpaper || exit

file=$(ls | fzf --prompt="Select wallpaper: ")

if [[ -n "$file" ]]; then
    swww img "$file" --transition-type none
fi