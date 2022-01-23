#!/bin/bash
set -euo pipefail
{
    print_include () {
        echo -e "\n[[ -r $1 ]] && . $1"
    }

    print_include ~/.config/include/profile.sh >> ~/.bash_profile
    print_include ~/.config/include/profile.sh >> ~/.zprofile
    print_include ~/.config/include/bashrc.bash >> ~/.bashrc
    print_include ~/.config/include/zshrc.zsh >> ~/.zshrc
    echo "Appended to .bash_profile, .zprofile, .bashrc, .zshrc."

    ./stow-home.sh common
    echo "Stowed common dotfiles."

    echo "Done."
    exit
}
