#!/usr/bin/env fish

function install__pkgs
    echo "info: install packages - mise"
    if not type -q mise
        curl --silent --show-error --location https://mise.run | sh
        ~/.local/bin/mise activate fish | source
    end

    mise use -g fzf@latest
    mise use -g neovim@latest
    mise use -g node@latest
    mise use -g starship@latest
    mise use -g tmux@latest
    mise use -g zoxide@latest

    echo "info: install packages - tmux"
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    ~/.tmux/plugins/tpm/bin/install_plugins
end

install__pkgs
