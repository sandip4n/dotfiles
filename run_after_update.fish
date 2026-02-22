#!/usr/bin/env fish

function update__pkgs
    echo "info: update packages - mise"
    mise upgrade --bump

    echo "info: update packages - fisher"
    fisher update
end

update__pkgs
