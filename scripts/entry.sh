#!/bin/bash
set -e

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

NODE_VERSION=${NODE_VERSION:=$(nvm current)}

script_prefix=""

if [ -e /scripts/"$1" ]; then
  script_prefix="/scripts/"
fi

nvm use --silent $NODE_VERSION

exec $script_prefix"$@"
