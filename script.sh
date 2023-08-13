#!/bin/sh

while true; do
    select=$(echo -e "vault_one\nvault_two\nvault_three" | rofi -dmenu -p "Select vault")

    if [ -z "$select" ]; then
        exit 1
    fi

    case "$select" in
        "vault_one" | "vault_two" | "vault_three")
            cat ~/.config/obsidian/$select.json > ~/.config/obsidian/obsidian.json
            break
            ;;
        *)
            continue
            ;;
    esac
done

         # If you happen to be using Wayland
obsidian #--enable-features=UseOzonePlatform --ozone-platform=wayland
