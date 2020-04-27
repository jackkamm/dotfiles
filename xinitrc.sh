# source this from ~/.xinitrc

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# https://wiki.archlinux.org/index.php/GNOME/Keyring#xinitrc_method
dbus-update-activation-environment --systemd DISPLAY
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

# https://wiki.archlinux.org/index.php/Uniform_look_for_Qt_and_GTK_applications
# requires package qt5-styleplugins
export QT_QPA_PLATFORMTHEME=gtk2

# xsecurelock
XSET_LENGTH=600
XSET_PERIOD=30
# uncomment (or add to ~/.xinitrc) to use xscreensaver hacks
#export XSECURELOCK_SAVER=saver_xscreensaver
# prevents screen blanking/DPMS from stopping xscreensaver & music
export XSECURELOCK_BLANK_TIMEOUT=-1
export XSECURELOCK_WAIT_TIME_MS="$XSET_PERIOD"000
xset s "$XSET_LENGTH" "$XSET_PERIOD"
xss-lock -n /usr/lib/xsecurelock/dimmer -l -- xsecurelock &

## Use alternative screenlocker. Note the default xss-lock dimmer only
## works on laptops with a backlight, not on desktops
#xss-lock -n /usr/share/doc/xss-lock/dim-screen.sh -l -- gnome-screensaver-command -l &

## increase trackpoint acceleration speed
#xinput set-prop "TPPS/2 IBM TrackPoint" 299 1

## replace trackpad middle click
## https://www.linuxquestions.org/questions/linux-newbie-8/how-to-disable-middle-click-button-on-etps-2-elantech-touchpad-4175619712/
#xinput set-button-map "SynPS/2 Synaptics TouchPad" 1 1 3 4 5 6 7
