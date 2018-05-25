First, setup cpan and Stow:
```
sudo apt-get install liblocal-lib-perl
cpan
cpan Stow
```

Initial setup:
```
make setup
```

To stow/restow:
```
stow -R -t ~ -d stow <directory> <directory2> ...
```

To unstow:
```
stow -t ~ -d stow -D <directory1> <directory2> ...
```
