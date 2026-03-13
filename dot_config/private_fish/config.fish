if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Initialize mise
~/.local/bin/mise activate fish | source

# Initialize starship
starship init fish | source

# Initialize zoxide
zoxide init fish | source

# Set theme
fish_config theme choose catppuccin-mocha

# Restore old backward-kill-* bindings
bind alt-backspace backward-kill-word
bind ctrl-alt-h backward-kill-word
bind ctrl-backspace backward-kill-token
bind alt-delete kill-word
bind ctrl-delete kill-token
