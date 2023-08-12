#!/bin/bash

while true; do
    select=$(echo -e "vault_one\nvault_two\nvault_three\nquit" | rofi -dmenu -p "Select vault:")

    case "$select" in
        "vault_one" | "vault_two" | "vault_three")
            cat ~/.config/obsidian/$select.json > ~/.config/obsidian/obsidian.json
            break
            ;;
        "quit")
            exit
            ;;
        *)
            continue
            ;;
    esac
done

         # If you happen to be using Wayland
obsidian #--enable-features=UseOzonePlatform --ozone-platform=wayland
