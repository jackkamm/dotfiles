#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# local machine-specific configuration
[[ -f ~/.bashrc.local ]] && . ~/.bashrc.local

alias ls='ls --color=auto'

# set prompt; try to use git-prompt
if [ -r /usr/share/git/completion/git-prompt.sh ]; then
    . /usr/share/git/completion/git-prompt.sh
    PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
else
    PS1='[\u@\h \W]\$ '
fi

## Conda
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
