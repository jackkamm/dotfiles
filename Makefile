.PHONY: setup

setup:
	stow -R -t ~ -d stow common

jaheira: setup
	stow -R -t ~ -d stow i3
	xdg-mime default emacsclient.desktop text/plain
	xdg-mime default emacsclient-mail.desktop x-scheme-handler/mailto
