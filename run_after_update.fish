#!/usr/bin/env fish

function update__pkgs
    echo "info: update packages - mise"
    mise upgrade --bump

    echo "info: update packages - fisher"
    fisher update

    echo "info: update packages - tmux"
    ~/.tmux/plugins/tpm/bin/update_plugins all
end

update__pkgs
