# add to .profile to source this file:
# [[ -r /path/to/profile.sh ]] && . /path/to/profile.sh

export EDITOR=vim

# https://wiki.archlinux.org/index.php/wine#Unregister_existing_Wine_file_associations
export WINEDLLOVERRIDES="winemenubuilder.exe=d"

#eval $(keychain --eval --quiet id_rsa [...])

#PATH=$HOME/miniconda3/bin:$PATH
#[[ -r ~/miniconda3/etc/profile.d/conda.sh ]] && . ~/miniconda3/etc/profile.d/conda.sh
