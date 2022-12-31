#!/bin/bash
set -euxo pipefail

#stow --adopt --no-folding --ignore='~' -t ${HOME} -R $*

# Above doesn't always work bcuz -R, --adopt flags seem to
# conflict. So instead manually invoke which flag to use in $*
stow --no-folding --ignore='~' -t ${HOME} $*
