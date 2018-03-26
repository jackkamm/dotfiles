#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -d ~/.shrc.d ]; then
    for profile in $(ls ~/.shrc.d/); do
        . ~/.shrc.d/$profile
    done
fi

[[ -r ~/.bash_prompt ]] && . ~/.bash_prompt
