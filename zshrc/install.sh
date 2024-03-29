#!/bin/bash

# check if $HOME is set
if [ -z "$HOME" ]; then
    echo "HOME is not set"
    exit 1
fi

# check if $HOME/.zshrc is a file
if [ ! -f "$HOME/.zshrc" ]; then
    echo "$HOME/.zshrc is not a file"
    exit 1
fi


# get the full path of the folder where this script is located
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# make all scripts in bin folder executable
chmod +x $CURRENT_DIR/bin/*

sed -i "1i\
# From DOTFILES\n\
source '$CURRENT_DIR/aliases.sh'\n\
export PATH=\$PATH:$CURRENT_DIR/bin/\
" "$HOME/.zshrc"
