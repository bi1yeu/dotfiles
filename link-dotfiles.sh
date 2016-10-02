#!/bin/bash

read -p "This will overwrite any existing ~/.spacemacs file. Continue? [Y/n] " answer
SCRIPT_PATH="${BASH_SOURCE[0]}";
while true
do
  case $answer in
   [Y]* ) ln -f `dirname ${SCRIPT_PATH}`/.spacemacs ~/.spacemacs
          echo "`dirname ${SCRIPT_PATH}`/.spacemacs has been hard-linked to ~/.spacemacs"
          break;;

   * ) echo "did nothing"
       exit;;
  esac
done

