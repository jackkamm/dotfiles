#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -r ~/.bash_prompt ]] && . ~/.bash_prompt
[[ -r ~/.shellrc ]] && . ~/.shellrc
[[ -r ~/.shell_aliases ]] && . ~/.shell_aliases
