#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

[[ -r ~/.local/share/dotfiles/bash_prompt.bash ]] && . ~/.local/share/dotfiles/bash_prompt.bash

export EDITOR=vim

## set window title to "somename" on debian/ubuntu, xterm/rxvt
#case "$TERM" in
#xterm*|rxvt*)
#    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}somename: \w\a\]$PS1"
#    ;;
#*)
#    ;;
#esac
