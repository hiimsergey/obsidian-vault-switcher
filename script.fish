#!/usr/bin/fish

while true
    set options "basic\nwriting"
    set select (echo -e "basic\nwriting\nquit" | rofi -dmenu -p "Select wiki:")

    switch $select
    case "basic" "writing"
        cat ~/.config/obsidian/$select.json > ~/.config/obsidian/obsidian.json
        break
    case "quit"
        exit
    case "*"
        continue
    end
end

obsidian --enable-features=UseOzonePlatform --ozone-platform=wayland
