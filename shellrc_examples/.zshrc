
source_if_exists() { [ -r "$1" ] && . "$1"; }

source_if_exists ~/.config/share/zshrc.zsh
#source_if_exists ~/.config/share/zsh2fish-archlinux.zsh
#source_if_exists ~/.config/share/biosyntax.sh
#source_if_exists ~/.config/share/xrdb-urxvt.sh

export EDITOR=vim
