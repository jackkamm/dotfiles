#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

[[ -r ~/dotfiles/profile.sh ]] && . ~/dotfiles/profile.sh
[[ -r ~/dotfiles/bashrc.bash ]] && . ~/dotfiles/bashrc.bash
