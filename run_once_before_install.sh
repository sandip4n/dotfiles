#!/usr/bin/env fish

function cleanup__pkgs
    echo "info: cleanup"

    rm -rf ~/.config/nvim
    rm -rf ~/.local/share/nvim
    rm -rf ~/.local/state/nvim
    rm -rf ~/.cache/nvim

    rm -rf ~/.config/fish

    rm -rf ~/.config/starship.toml

    rm -rf ~/.tmux.conf
    rm -rf ~/.tmux
end

function install__pkgs
    echo "info: install packages - mise"
    if not type -q mise
        curl --silent --show-error --location https://mise.run | sh
    end

    echo "info: install packages - mise"
    ~/.local/bin/mise activate fish | source
    mise use -g fzf@latest
    mise use -g neovim@latest
    mise use -g node@latest
    mise use -g python@latest
    mise use -g starship@latest
    mise use -g tmux@latest
    mise use -g zoxide@latest

    echo "info: install packages - fisher"
    curl --silent --show-error --location https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source
    fisher install jorgebucaran/fisher
    fisher install PatrickF1/fzf.fish
    fisher install catppuccin/fish
end

cleanup__pkgs
install__pkgs
