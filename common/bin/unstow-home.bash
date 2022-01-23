#!/bin/bash
set -euxo pipefail
stow -D -t ${HOME} $*
