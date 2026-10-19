#!/bin/bash
set -euo pipefail
{
    print_include () {
        echo -e "\n[[ -r $1 ]] && . $1"
    }

    print_include ~/.config/share/environment.sh >> ~/.bash_profile
    print_include ~/.config/share/environment.sh >> ~/.zprofile
    print_include ~/.config/share/environment.sh >> ~/.xprofile

    print_include ~/.config/share/bashrc.bash >> ~/.bashrc
    print_include ~/.config/share/zshrc.zsh >> ~/.zshrc
    echo "Appended to .bash_profile, .zprofile, .xprofile, .bashrc, .zshrc."

    ./stow-home.bash common
    echo "Stowed common dotfiles."

    echo "Done."
    exit
}
