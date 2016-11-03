#!/usr/bin/env bash

read -rp "# This will overwrite any existing ~/.spacemacs file. Continue? [y/N] " confirm
script_path="${BASH_SOURCE[0]}"

if [[ $confirm == y ]]
then
    ln -f $(dirname $script_path)/.spacemacs ~/.spacemacs
    echo "# $(dirname $script_path)/.spacemacs has been hard-linked to ~/.spacemacs"
else
    echo "# Did nothing."
fi
