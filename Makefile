DOTFILES = common zsh arch-i3-hidpi bash linux
.PHONY: clean $(DOTFILES)

$(DOTFILES): %:
	stow -R --no-folding -t $(HOME) $*

clean:
	stow -t $(HOME) -D $(DOTFILES)
