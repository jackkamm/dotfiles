DOTFILES = common zsh amalthea bash sanger-laptop
.PHONY: clean $(DOTFILES)

$(DOTFILES): %:
	stow -R --no-folding -t $(HOME) $*

clean:
	stow --no-folding -t $(HOME) -D $(DOTFILES)
