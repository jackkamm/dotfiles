# to source this file, do:
# source_if_exists() { [ -r "$1" ] && . "$1"; }
# source_if_exists /path/to/environment.sh

## use the same environment variables as systemd user units
## See also: man environment.d
ENVIRONMENTD="$HOME/.config/environment.d"
set -a
if [ -d "$ENVIRONMENTD" ]; then
    for conf in $(ls "$ENVIRONMENTD"/*.conf)
    do
        . "$conf"
    done
fi
set +a
# NOTE: on Ubuntu PATH may get clobbered by /etc/environment, which is
# symlinked to /usr/lib/environment.d/99-environment.conf.  To prevent
# this, give config files a higher priority,
# e.g. 990-env.conf. Alternatively, mask the offending config file by
# creating one with the same name, see man environment.d(5).
