#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

#exec gnome-session

xrandr --dpi 192
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export GDK_SCALE=2
export GDK_DPI_SCALE=0.5
#xrandr --output eDP1 --scale 0.5x0.5


#exec startkde
#exec startxfce4
#exec startlxqt

## https://bbs.archlinux.org/viewtopic.php?id=231006
#dbus-update-activation-environment --systemd DISPLAY
#eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
#export SSH_AUTH_SOCK

export QT_QPA_PLATFORMTHEME="qt5ct" # for qt icons in some KDE apps

## bug? need to call "xrandr" without arguments before setting resolution
#xrandr
#xrandr --output eDP1 --mode 1280x800

exec i3

#setxkbmap -option ctrl:swapcaps
