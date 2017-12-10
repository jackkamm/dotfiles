DOTFILES = common zsh arch-i3-macbook
.PHONY: all clean $(DOTFILES)

all: $(DOTFILES)

$(DOTFILES): %:
	stow -R -t $(HOME) $*

clean:
	stow -t $(HOME) -D $(DOTFILES)
