export EDITOR=vim

if [ -z "$OLDPATH" ]; then
    export OLDPATH=$PATH
    export PATH=$HOME/bin:$HOME/.local/bin:$PATH
fi


## .bash_profile ONLY
[[ -f ~/.bashrc ]] && . ~/.bashrc

## .profile ONLY
if [ "$DESKTOP_SESSION" == "i3" ]; then
    light-locker &
    xfce4-power-manager &
    nm-applet &
    dropbox start &
    blueberry-tray &
    #redshift & #TODO: "Unable to start GeoClue client: GDBus.Error:org.freedesktop.DBus.Error.AccessDenied: 'redshift' disallowed, no agent for UID 1000."
fi
