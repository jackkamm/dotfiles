DOTFILES = common zsh arch-i3-hidpi
.PHONY: clean $(DOTFILES)

$(DOTFILES): %:
	stow -R -t $(HOME) $*

clean:
	stow -t $(HOME) -D $(DOTFILES)
