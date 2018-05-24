DOTFILES = common khalid sanger-laptop
.PHONY: clean $(DOTFILES)

$(DOTFILES): %:
	stow -R --no-folding -t $(HOME) $*

clean:
	stow --no-folding -t $(HOME) -D $(DOTFILES)
