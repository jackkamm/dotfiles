if [ -n "$TMUX" ]; then
    # avoid adding to PATH twice
    return
fi

if [ -d ~/.profile.d ]; then
    for profile in $(ls ~/.profile.d/); do
        . ~/.profile.d/$profile
    done
fi
