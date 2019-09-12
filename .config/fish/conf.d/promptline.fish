function fish_prompt
	env FISH_VERSION=$FISH_VERSION PROMPTLINE_LAST_EXIT_CODE=$status bash $XDG_CONFIG_HOME/bash/conf.d/promptline.bash left
end

function fish_right_prompt
	env FISH_VERSION=$FISH_VERSION PROMPTLINE_LAST_EXIT_CODE=$status bash $XDG_CONFIG_HOME/bash/conf.d/promptline.bash right
end
