# source this from ~/.xinitrc

/usr/lib/polkit-kde-authentication-agent-1 &

# https://wiki.archlinux.org/index.php/GNOME/Keyring#xinitrc_method
dbus-update-activation-environment --systemd DISPLAY
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

## increase trackpoint acceleration speed
#xinput set-prop "TPPS/2 IBM TrackPoint" 299 1

## replace trackpad middle click
## https://www.linuxquestions.org/questions/linux-newbie-8/how-to-disable-middle-click-button-on-etps-2-elantech-touchpad-4175619712/
#xinput set-button-map "SynPS/2 Synaptics TouchPad" 1 1 3 4 5 6 7
