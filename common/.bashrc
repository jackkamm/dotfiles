#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -d ~/.bashrc.d ]; then
    for profile in ~/.bashrc.d/*.sh; do
        . $profile
    done
fi

alias ls='ls --color=auto'

# set prompt; try to use git-prompt
BLACK="\e[30m"
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
CYAN="\e[36m"
MAGENTA="\e[35m"
GRAY="\e[37m"
WHITE="\e[39m" # default
PS1=$RED'\u@\h'$YELLOW':\w'$WHITE
if [ -r /usr/share/git/completion/git-prompt.sh ]; then
    . /usr/share/git/completion/git-prompt.sh
    PS1=$PS1$GREEN'$(__git_ps1 ":%s")'$WHITE
fi
PS1="["$PS1"]\$ "

## conda
if [ -d $HOME/miniconda3 ];
then
	  . $HOME/miniconda3/etc/profile.d/conda.sh
elif [ -d $HOME/anaconda3 ]
then
	  . $HOME/anaconda3/etc/profile.d/conda.sh
fi

## enable directory tracking in emacs term
## http://stackoverflow.com/a/10050104/3718509
#if [ -n "$INSIDE_EMACS" ]; then
if [ "$TERM" = "eterm-color" ]; then
    # function to set the dired and host for ansiterm
    set_eterm_dir() {
        # following are needed to reset username/host
        # in case they have been changed in ssh session
        print -P "\033AnSiTu %n"
        print -P "\033AnSiTh" "$(hostname -f)"
        # set ansiterm dired
        print -P "\033AnSiTc %d"
    }

    # call prmptcmd whenever prompt is redrawn
    precmd_functions=($precmd_functions set_eterm_dir)
fi

## fixes broken term-send-backspace in emacs term in OSX
if [[ -n $INSIDE_EMACS && $(uname) == 'Darwin' ]]; then
    stty ek
    ## alternate solution:
    #stty erase 
fi
