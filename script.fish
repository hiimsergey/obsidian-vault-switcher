#!/bin/fish

while true
    set select (echo -e "vault_one\nvault_two\nvault_three" | rofi -dmenu -p "Select vault:")

    if test -z $select
        exit 1
    end

    switch $select
    case "vault_one" "vault_two" "vault_three"
        cat ~/.config/obsidian/$select.json > ~/.config/obsidian/obsidian.json
        break
    case "*"
        continue
    end
end

         # If you happen to be using Wayland
obsidian #--enable-features=UseOzonePlatform --ozone-platform=wayland
