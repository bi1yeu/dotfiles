#!/usr/bin/env bash

read -rp "# Are you sure you want to symlink this repo's spacemacs directory to ~/.spacemacs.d? [y/N] " confirm
pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd -P`
popd > /dev/null

if [[ $confirm == y ]]
then
    ln -v -s $SCRIPTPATH/spacemacs ~/.spacemacs.d || { echo "# Couldn't link ~/.spacemacs.d"; exit 1; }
else
    echo "# Did nothing."
fi
