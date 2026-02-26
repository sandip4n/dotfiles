#!/usr/bin/env fish

function install__pkgs
    echo "info: install packages - tmux"
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    ~/.tmux/plugins/tpm/bin/install_plugins
end

install__pkgs
