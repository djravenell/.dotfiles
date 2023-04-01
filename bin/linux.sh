#!/bin/bash

#Checks if system type is linux if not dumps an error message and exits
if [ $(uname) == "Linux" ]; then
  echo "Operating system type is Linux."
else
  echo "Error: Operating system type is not Linux." >> linuxsetup.log
  exit
fi
 
#Creates the .TRASH directory if not already made
mkdir -p ~/.TRASH

#Checks if .vimrc exist in home directory and if true changes its name and dumps a message
FILE=~/.vimrc
if (test -f "$FILE") then
	mv ~/.vimrc ~/.bup_vimrc
	echo "The file .vimrc was changed to .bup_vimrc" >> linuxsetup.log
fi

#Overwrites the contect of .vimrc file with the contents of the etc/vimrc file
cat ~/.dotfiles/etc/vimrc > ~/.vimrc

#Adds a statement to the of the .bashrc file
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
