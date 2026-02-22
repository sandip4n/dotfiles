#!/usr/bin/env fish

function install__pkgs
    echo "info: install packages - fisher"
    curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source
    fisher install jorgebucaran/fisher
    fisher install PatrickF1/fzf.fish
    fisher install dracula/fish

    fish_config theme choose "Dracula Official"
    fish_config theme save
end

install__pkgs
