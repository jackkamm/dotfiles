#
# ~/.bash_profile
#

if [ -n "$TMUX" ]; then
    [[ -f ~/.bashrc ]] && . ~/.bashrc
    return
fi

if [ -d ~/.profile.d ]; then
    for profile in $(ls ~/.profile.d/); do
        . ~/.profile.d/$profile
    done
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
