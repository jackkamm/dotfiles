#!/bin/sh

if [[ $1 == "" ]]
then
    echo "No packages specified."
    exit 1
fi

stow --adopt --no-folding --ignore='~' -t ${HOME} -R $*
