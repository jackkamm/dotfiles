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

# set prompt; try to use git-prompt
BLACK="\[\e[30m\]"
RED="\[\e[31m\]"
GREEN="\[\e[32m\]"
YELLOW="\[\e[33m\]"
BLUE="\[\e[34m\]"
CYAN="\[\e[36m\]"
MAGENTA="\[\e[35m\]"
GRAY="\[\e[37m\]"
WHITE="\[\e[39m\]" # default
PS1=$BLUE'\u@\h'$MAGENTA':\w'$WHITE
if [ -r /usr/share/git/completion/git-prompt.sh ]; then
    . /usr/share/git/completion/git-prompt.sh
    export GIT_PS1_SHOWDIRTYSTATE=1
    PS1=$PS1$CYAN'$(__git_ps1 ":%s")'$WHITE
fi
PS1="["$PS1"]\$ "
