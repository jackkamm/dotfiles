#!/bin/bash
set -euo pipefail
{
    # adds a line to source $1 in the rc-file $2 if $2 exists and
    # doesn't contain $1.
    print_include () {
        if [ -f $2 ] && ! grep -qF $1 $2 ; then
            echo -e "\n[[ -r $1 ]] && . $1" >> $2
            echo "Appended to $2"
        fi
    }

    ./stow-home.bash common
    echo "Stowed common dotfiles."

    print_include ~/.config/include/profile.sh ~/.profile
    print_include ~/.config/include/profile.sh ~/.bash_profile
    print_include ~/.config/include/profile.sh ~/.zprofile

    print_include ~/.config/include/bashrc.bash ~/.bashrc
    print_include ~/.config/include/zshrc.zsh ~/.zshrc

    echo "Done."
    exit
}
