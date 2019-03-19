localectl set-x11-keymap us "" "" ctrl:swapcaps

## alternatively, add following to xinitrc/bash_profile/etc,
## but note this may need to be rerun for hotplugged USB keyboards:
#setxkbmap -option ctrl:swapcaps
