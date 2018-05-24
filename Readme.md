Initial setup:
```
stow -t ~ -d stow stow
```

To stow/restow:
```
stow -R -t ~ -d stow <directory> <directory2> ...
```

To unstow:
```
stow -t ~ -d stow -D <directory1> <directory2> ...
```
