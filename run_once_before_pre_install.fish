#!/usr/bin/env fish

function cleanup__pkgs
    echo "info: cleanup - nvim"
    rm -rf ~/.config/nvim
    rm -rf ~/.local/share/nvim
    rm -rf ~/.local/state/nvim
    rm -rf ~/.cache/nvim

    echo "info: cleanup - fish"
    rm -rf ~/.config/fish
    mkdir -p ~/.config/fish
    touch ~/.config/fish/config.fish
    source ~/.config/fish/config.fish

    echo "info: cleanup - starship"
    rm -rf ~/.config/starship.toml

    echo "info: cleanup - tmux"
    rm -rf ~/.tmux.conf
    rm -rf ~/.tmux
end

function install__pkgs
    echo "info: install packages - fisher"
    curl --silent --show-error --location https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source
    fisher install jorgebucaran/fisher
    fisher install PatrickF1/fzf.fish
    fisher install catppuccin/fish
end

cleanup__pkgs
install__pkgs
