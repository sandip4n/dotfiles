if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Initialize mise
mise activate fish | source

# Initialize starship
starship init fish | source

# Restore old backward-kill-* bindings
bind alt-backspace backward-kill-word
bind ctrl-alt-h backward-kill-word
bind ctrl-backspace backward-kill-token
bind alt-delete kill-word
bind ctrl-delete kill-token
