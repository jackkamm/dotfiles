# added by cpan
PATH="/home/jack/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/jack/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/jack/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/jack/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/jack/perl5"; export PERL_MM_OPT;

# added by Miniconda3 installer
export PATH="/home/jack/miniconda3/bin:$PATH"
# User specific environment and startup programs

# set path
export PATH=$HOME/bin:$HOME/.local/bin:$PATH

if [ "$DESKTOP_SESSION" == "i3" ]; then
    light-locker &
    xfce4-power-manager &
    nm-applet &
    dropbox start &
    blueberry-tray &
    #redshift & #TODO: "Unable to start GeoClue client: GDBus.Error:org.freedesktop.DBus.Error.AccessDenied: 'redshift' disallowed, no agent for UID 1000."
fi
