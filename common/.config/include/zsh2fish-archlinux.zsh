# Source this from ~/.zshrc like:
# [[ -r ~/src/dotfiles/include/zsh2fish-archlinux.zsh ]] && . ~/src/dotfiles/include/zsh2fish-archlinux.zsh

#source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE=""

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
