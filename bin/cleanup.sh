#!/bin/bash

#Removes the .vimrc file
rm ~/.vimrc

#Removes the added line from the .bashrc file
sed -i '/source ~\/.dotfiles\/etc\/bashrc_custom/d' ~/.bashrc

#Removes the trash directory
rm -rf ~/.TRASH
