#!/bin/bash

# create a list with folder to be installed
SHELLS=(
  "zshrc"
)

chmod +x bin/*

# for each folder in the list call install.sh
for shell in "${SHELLS[@]}"; do
  if [ -f "install.sh" ]; then
    sed -i "1i PATH=\$PATH:$PWD/bin/\n" "$HOME/.$shell"
    echo "Installing $shell/install.sh"
    $PWD/$shell/install.sh
  fi
done



echo "Done!"
