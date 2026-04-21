#!/usr/bin/env fish

function install__pkgs
    echo "info: install packages - tmux"
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    ~/.tmux/plugins/tpm/bin/install_plugins
end

function program__conf
    echo "info: program configuration - git"
    git config --global core.editor nvim
end

install__pkgs
program__conf
