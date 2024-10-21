if status is-interactive
    fish_add_path /opt/homebrew/bin

    # Set GPG tty
    set -gx GPG_TTY (tty)

    theme_gruvbox dark
end
