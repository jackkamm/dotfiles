#
# ~/.bash_profile
#

if [ -n "$TMUX" ]; then
    [[ -f ~/.bashrc ]] && . ~/.bashrc
    return
fi

export EDITOR=vim

if [ -d ~/.profile.d ]; then
    for profile in ~/.profile.d/*.sh; do
        . $profile
    done
fi

export PATH=$HOME/bin:$PATH

[[ -f ~/.bashrc ]] && . ~/.bashrc
