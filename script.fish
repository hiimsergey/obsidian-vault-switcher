#!/usr/bin/fish

while true
    set select (echo -e "vault_one\nvault_two\nvault_three\nquit" | dmenu -p "Select vault:")

    switch $select
    case "vault_one" "vault_two" "vault_three"
        cat ~/.config/obsidian/$select.json > ~/.config/obsidian/obsidian.json
        break
    case "quit"
        exit
    case "*"
        continue
    end
end

         # If you happen to be using Wayland
obsidian #--enable-features=UseOzonePlatform --ozone-platform=wayland
