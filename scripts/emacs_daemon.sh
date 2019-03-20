systemctl --user enable --now emacs.service
stow -R -t ~ -d stow emacsclient-desktop
xdg-mime default emacsclient.desktop text/plain
xdg-mime default emacsclient-mail.desktop x-scheme-handler/mailto
