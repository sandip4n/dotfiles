#!/usr/bin/env fish

function install__pkgs
    echo "info: install packages - mise"
    if not type -q mise
        curl --silent --show-error --location https://mise.run | sh
    end

    mise use -g fzf@latest
    mise use -g neovim@latest
    mise use -g starship@latest
    mise use -g zoxide@latest
end

install__pkgs
