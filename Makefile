.PHONY: setup

common: $(HOME)/.tmux.conf
	stow -R --no-folding -t ~ -d stow common

$(HOME)/.tmux.conf:
	echo "source $(PWD)/include/tmux.conf" >> $@
	echo "source $(PWD)/include/tmux-x-clipboard.conf" >> $@
