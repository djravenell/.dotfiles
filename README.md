# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc:
This is my custom .vimrc configuration for Vim.
## .bashrc:
This is my custom .bashrc configuration for Bash.
## cleanup.sh:
Removes the .vimrc file and .TRASH directory. It also removes a line from the .bashrc file.
## linux.sh:
Check to make sure the operating type is Linux and creates the .TRASH directory. Checks if the .vimrc file exists and changes it's name if it does. Overwrites the contents of the .vimrc file. And finally adds a statment to the end of the .bashrc file.
## bashrc_custom:
First looks for executables. Then sets up aliases of commands and functions for me to use. It also makes those aforementioned functions. 
## vimrc:
Turns on syntax, number, autoindent, ruler, changes the color.
## Makefile:
First runs the clean script and then runs the linux script.
