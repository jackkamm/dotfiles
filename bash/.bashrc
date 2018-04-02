#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -d ~/.shellrc.d ]; then
    for profile in $(ls ~/.shellrc.d/); do
        . ~/.shellrc.d/$profile
    done
fi

[[ -r ~/.bash_prompt ]] && . ~/.bash_prompt
