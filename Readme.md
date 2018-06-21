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

To setup keyboard:
```
localectl set-x11-keymap us "" "" ctrl:swapcaps
```
or add to xinitrc/bash_profile/etc:
```
setxkbmap -option ctrl:swapcaps
```
though note the latter may need to be rerun for hotplugged USB keyboards.
