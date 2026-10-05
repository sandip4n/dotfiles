#!/usr/bin/env -S fish --no-config

function examine__deps
    echo "info: examine dependencies"
    for dep in curl tar git unzip
        if not command -q $dep
            echo "error: examine dependencies - $dep not found" >&2
            exit 1
        end
    end
end

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
    if not type -q fisher
        echo "error: install packages - fisher not found" >&2
        exit 1
    end
    fisher install jorgebucaran/fisher
    fisher install PatrickF1/fzf.fish
    fisher install catppuccin/fish

    echo "info: install packages - mise"
    curl --silent --show-error --location https://mise.run/fish | sh
    ~/.local/bin/mise activate fish | source
    if not type -q mise
        echo "error: install packages - mise not found" >&2
        exit 1
    end

    for pkg in fzf neovim node starship tmux zoxide
        if not mise use -g $pkg@latest
            echo "error: install packages - $pkg not found" >&2
            exit 1
        end
    end
end

examine__deps
cleanup__pkgs
install__pkgs
