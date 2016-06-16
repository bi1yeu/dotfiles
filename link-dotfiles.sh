#!/bin/bash

read -p "This will overwrite any existing ~/.spacemacs file. Continue? [Y/n] " answer

while true
do
  case $answer in
   [Y]* ) ln -f ./.spacemacs ~/.spacemacs
          echo "./.spacemacs has been hard-linked to ~/.spacemacs"
          break;;

   * ) echo "did nothing"
       exit;;
  esac
done

