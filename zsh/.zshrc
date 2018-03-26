if [ -d ~/.shrc.d ]; then
    for profile in $(ls ~/.shrc.d/); do
        . ~/.shrc.d/$profile
    done
fi

# prompt+git, see "man zshcontrib", /vcs_info
setopt PROMPT_SUBST
autoload -Uz vcs_info
zstyle ':vcs_info:*' check-for-changes true
precmd () { vcs_info }
PS1='%F{5}%n@%m%f:%F{4}%~%F{6}${vcs_info_msg_0_}%f %# '

# direnv
if type direnv > /dev/null; then
     eval "$(direnv hook zsh)"
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
