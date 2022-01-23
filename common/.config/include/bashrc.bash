## source from ~/.bashrc with:
## [[ -r /path/to/bashrc.bash ]] && . /path/to/bashrc.bash

# setup prompt

BLACK="\[\e[30m\]"
RED="\[\e[31m\]"
GREEN="\[\e[32m\]"
YELLOW="\[\e[33m\]"
BLUE="\[\e[34m\]"
CYAN="\[\e[36m\]"
MAGENTA="\[\e[35m\]"
GRAY="\[\e[37m\]"
WHITE="\[\e[39m\]" # default
PS1=$MAGENTA'\u@\h'$BLUE':\w'$WHITE

# to get git prompt, source git-prompt.sh BEFORE this file
# Arch: /usr/share/git/completion/git-prompt.sh
# Fedora: /usr/share/git-core/contrib/completion/git-prompt.sh
# web: https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
if [ "$(type -t __git_ps1)" = function ]; then
    export GIT_PS1_SHOWDIRTYSTATE=1
    PS1=$PS1$CYAN'$(__git_ps1 ":%s")'$WHITE
fi

PS1="["$PS1"]\$ "

## set window title to "somename" on debian/ubuntu, xterm/rxvt
#case "$TERM" in
#xterm*|rxvt*)
#    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}somename: \w\a\]$PS1"
#    ;;
#*)
#    ;;
#esac
