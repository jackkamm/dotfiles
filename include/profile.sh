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
# https://wiki.archlinux.org/index.php/Systemd/User#PATH
# Needed in case systemd ignores/overwrites PATH (e.g. on EC2 Ubuntu 18.04)
systemctl --user import-environment PATH

set +a
