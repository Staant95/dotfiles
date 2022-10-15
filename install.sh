#!/bin/bash

# create a list with folder to be installed
SHELLS=(
  "zshrc"
)

# for each folder in the list call install.sh
for shell in "${SHELLS[@]}"; do
  if [ -f "install.sh" ]; then
    echo "Installing $shell/install.sh"
    $PWD/$shell/install.sh
  fi
done