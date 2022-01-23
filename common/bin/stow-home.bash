#!/bin/bash
set -euxo pipefail
stow --adopt --no-folding --ignore='~' -t ${HOME} -R $*
