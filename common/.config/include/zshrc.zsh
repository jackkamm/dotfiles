## source from .zshrc with:
## [[ -r /path/to/zshrc.zsh ]] && . /path/to/zshrc.zsh

#alias ls='ls --color=auto'
#alias grep='grep --color=auto'

alias bioconda-install="conda install -c conda-forge -c bioconda "

export CONDA_AUTO_ACTIVATE_BASE=false

# https://unix.stackexchange.com/questions/258656/how-can-i-delete-to-a-slash-or-a-word-in-zsh
autoload -U select-word-style
select-word-style bash

function xrdb-urxvt {
    xrdb -merge "$1" && pkill -HUP urxvt
}

# prompt+git, see "man zshcontrib", /vcs_info
# NOTE: If there's hanging at the prompt, try interrupting with
# Control-C, then do "git status" to rebuild the index
setopt PROMPT_SUBST
autoload -Uz vcs_info
zstyle ':vcs_info:*' check-for-changes true
precmd () {vcs_info}

# Copied from https://wiki.archlinux.org/index.php/Zsh#xterm_title
autoload -Uz add-zsh-hook
function xterm_title_precmd () {
	print -Pn -- '\e]2;%n@%m %~\a'
	[[ "$TERM" == 'screen'* ]] && print -Pn -- '\e_\005{g}%n\005{-}@\005{m}%m\005{-} \005{B}%~\005{-}\e\\'
}
function xterm_title_preexec () {
	print -Pn -- '\e]2;%n@%m %~ %# ' && print -n -- "${(q)1}\a"
	[[ "$TERM" == 'screen'* ]] && { print -Pn -- '\e_\005{g}%n\005{-}@\005{m}%m\005{-} \005{B}%~\005{-} %# ' && print -n -- "${(q)1}\e\\"; }
}
if [[ "$TERM" == (screen*|xterm*|rxvt*|tmux*|putty*|konsole*|gnome*) ]]; then
	add-zsh-hook -Uz precmd xterm_title_precmd
	add-zsh-hook -Uz preexec xterm_title_preexec
fi

if [[ $TERM == "dumb" ]];
then
    # needed for emacs tramp
    unsetopt zle && PS1='$ ' && return
else
    PS1='%F{5}%n@%m%f:%F{4}%~%F{6}${vcs_info_msg_0_}%f %# '
fi

# The following lines were added by compinstall

zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/jack/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
