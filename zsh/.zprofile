if [ -n "$TMUX" ]; then
    # avoid adding to PATH twice
    return
fi

export EDITOR=vim

if [ -d ~/.profile.d ]; then
    for profile in ~/.profile.d/*.sh; do
        . $profile
    done
fi

export PATH=$HOME/bin:$PATH
