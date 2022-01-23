# add to .profile to source this file:
# [[ -r /path/to/profile.sh ]] && . /path/to/profile.sh

export EDITOR=vim

# https://wiki.archlinux.org/index.php/wine#Unregister_existing_Wine_file_associations
export WINEDLLOVERRIDES="winemenubuilder.exe=d"

# https://faq.i3wm.org/question/3410/wm-shortcuts-ignored-in-virtual-machine.1.html
export SPICE_NOGRAB=1

#eval $(keychain --eval --quiet id_rsa [...])

#export PATH=$HOME/miniconda3/bin:$PATH
#[[ -r ~/miniconda3/etc/profile.d/conda.sh ]] && . ~/miniconda3/etc/profile.d/conda.sh

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
# this, give config files a higher priority, e.g. 990-env.conf

# prevent rofi-pass using whoami as default value of "user"
export ROFI_PASS_DEFAULT_USER=""
