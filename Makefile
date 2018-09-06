.PHONY: setup khalid

setup:
	stow -R -t ~ -d stow common

khalid: setup
	stow -R -t ~ -d stow Xresources spacemacs
	stow -R -t ~ -d stow khalid

