#!/usr/bin/env fish

function examine__deps
    echo "info: examine dependencies"
    for dep in git tmux nvim
        if not command -q $dep
            echo "error: examine dependencies - $dep not found" >&2
            exit 1
        end
    end
end

function install__pkgs
    echo "info: install packages - tmux"
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    if not test -x ~/.tmux/plugins/tpm/bin/install_plugins
        echo "error: install packages - tpm not found" >&2
        exit 1
    end
    ~/.tmux/plugins/tpm/bin/install_plugins
end

function program__conf
    echo "info: program configuration - git"
    git config --global core.editor nvim
end

examine__deps
install__pkgs
program__conf
