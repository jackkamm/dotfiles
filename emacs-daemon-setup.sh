systemctl --user enable --now emacs.service
stow -R emacsclient-desktop
xdg-mime default emacs.desktop text/plain
xdg-mime default emacsclient-mail.desktop x-scheme-handler/mailto
