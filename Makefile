.PHONY: setup khalid

setup:
	stow -R -t ~ -d stow stow
	stow -R -t ~ -d stow common

khalid: setup
	stow -R -t ~ -d stow i3 Xresources spacemacs
	stow -R -t ~ -d stow khalid

