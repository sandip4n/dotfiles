for file in (find $XDG_CONFIG_HOME/fish/completions -name 'git-*.fish')
	source $file
end
