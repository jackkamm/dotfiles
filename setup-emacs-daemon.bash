#!/bin/bash
set -euxo pipefail
{
    ./stow-home.bash emacsclient-desktop

    systemctl --user enable --now emacs.service

    xdg-mime default emacs.desktop text/plain
    xdg-mime default emacsclient-mail.desktop x-scheme-handler/mailto

    exit
}
