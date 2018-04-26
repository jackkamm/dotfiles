#!/bin/bash

## source this file from .bash_profile or .zprofile like this:
## [[ -r ~/.profile ]] && . ~/.profile

if [ -n "$TMUX" ]; then
    # avoid adding to PATH twice
    return
fi

export EDITOR=vim
export PATH=$HOME/bin:$HOME/.local/bin:$PATH
