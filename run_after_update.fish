#!/usr/bin/env fish

function examine__deps
    echo "info: examine dependencies"
    for dep in mise fisher
        if not type -q $dep
            echo "error: examine dependencies - $dep not found" >&2
            exit 1
        end
    end
    if not test -x ~/.tmux/plugins/tpm/bin/update_plugins
        echo "error: examine dependencies - tpm not found" >&2
        exit 1
    end
end

function upgrade__pkgs
    echo "info: upgrade packages - mise"
    mise upgrade --bump

    echo "info: upgrade packages - fisher"
    fisher update

    echo "info: upgrade packages - tmux"
    ~/.tmux/plugins/tpm/bin/update_plugins all
end

examine__deps
upgrade__pkgs
