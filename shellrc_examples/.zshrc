
source_if_exists() { [ -r "$1" ] && . "$1"; }

source_if_exists ~/.local/share/dotfiles/zshrc.zsh
#source_if_exists ~/.local/share/dotfiles/zsh2fish-archlinux.zsh
#source_if_exists ~/.local/share/dotfiles/biosyntax.sh
#source_if_exists ~/.local/share/dotfiles/xrdb-urxvt.sh

export EDITOR=vim
