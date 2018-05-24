.PHONY: setup khalid

setup:
	stow -R -t ~ -d stow stow
	stow -R -t ~ -d stow common

khalid: setup
	stow -R -t ~ -d stow i3 khalid
	# to run spacemacs: "HOME=~/spacemacs /bin/emacs"
	mkdir -p ~/spacemacs
	stow -R -t ~/spacemacs -d stow spacemacs
