#!/bin/bash
set -euo pipefail
{
    print_include () {
        echo -e "\n[[ -r $1 ]] && . $1"
    }

    print_include ~/.local/share/dotfiles/environment.sh >> ~/.bash_profile
    print_include ~/.local/share/dotfiles/environment.sh >> ~/.zprofile
    print_include ~/.local/share/dotfiles/environment.sh >> ~/.xprofile

    print_include ~/.local/share/dotfiles/bash_prompt.bash >> ~/.bashrc
    print_include ~/.local/share/dotfiles/zshrc.zsh >> ~/.zshrc
    echo "Appended to .bash_profile, .zprofile, .xprofile, .bashrc, .zshrc."

    ./stow-home.bash common
    echo "Stowed common dotfiles."

    echo "Done."
    exit
}
