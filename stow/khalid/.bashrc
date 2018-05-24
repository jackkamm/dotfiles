#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -r ~/.bash_prompt ]] && . ~/.bash_prompt
[[ -r ~/.shell_aliases ]] && . ~/.shell_aliases

[[ -r ~/.profile ]] && . ~/.profile
