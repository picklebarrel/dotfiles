#!/bin/bash
# the command above has to be first in the file. It is commonly called a "shebang". 
# this file is a bash script that automates the creation of symbolic links 
# for clarity we (i.e., Pano) a "symbolic link" reflects both the "symbolic link file" and the actual file that we're pointing to. The command is of the form "ln -s <actual file> <symbolic link file>
# One more thing: the symbolic link file is located where a given software application wwould expect to find this file. 

# This file is a bash script that automates the process of symbolically linking your configuration files into their intended locations on the file system
DOTFILES="$(pwd)"

# Link standalone files
[[ ! -e "${HOME}/.bashrc" ]] && ln -s ${DOTFILES}/bashrc ~/.bashrc || echo '~/.bashrc exists; skipping and not overwriting.'
[[ ! -e "${HOME}/.bash_profile" ]] && ln -s ${DOTFILES}/bash_profile ~/.bash_profile || echo '~/.bash_profile exists; skipping and not overwriting.'
[[ ! -e "${HOME}/.bash_logout" ]] && ln -s ${DOTFILES}/bash_logout ~/.bash_logout || echo '~/.bash_logout exists; skipping and not overwriting.'
[[ ! -e "${HOME}/.zlogin" ]] && ln -s ${DOTFILES}/zlogin ~/.zlogin || echo '~/.zlogin exists; skipping and not overwriting.'
[[ ! -e "${HOME}/.zshrc" ]] && ln -s ${DOTFILES}/zshrc ~/.zshrc || echo '~/.zshrc exists; skipping and not overwriting.'

# Link directories
[[ ! -d "${HOME}/.config" ]] && ln -s ${DOTFILES}/config ~/.config || echo '~/.config exists; skipping and not overwriting.'
[[ ! -d "${HOME}/.vim" ]] && ln -s ${DOTFILES}/vim ~/.vim || echo '~/.vim exists; skipping and not overwriting.'

