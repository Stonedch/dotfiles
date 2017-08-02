#!/bin/bash

GREEN='\033[0;32m'
CYAN='\033[0;36m'
NORMAL='\033[0m'
YELLOW='\033[0;33m'
SCRIPTPATH=`pwd -P`

printf "${CYAN}Installation started...${NORMAL}\n"

printf "${CYAN}Download fonts...${NORMAL}\n"
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20for%20Powerline%20Nerd%20Font%20Complete.otf
cd -

if [ ! -d "~/.config" ]; then
    mkdir ~/.config
    mkdir ~/.config/nvim
fi

if [ ! -d "~/.config/nvim" ]; then
    mkdir ~/.config/nvim
fi

printf "${CYAN}Install vim plug...${NORMAL}\n"
mv --backup=numbered ~/.config/nvim ~/.config/nvim.back
if [ "$1" = '--classic-vim' ]; then
   curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
printf "${GREEN}Done!${NORMAL}\n"

printf "${CYAN}Create symlinks to init.vim...${NORMAL}\n"
mv ~/.config/nvim/init.vim ~/.config/nvim/init.vim.back
mv ~/.vimrc ~/.vimrc.back
ln -s ${SCRIPTPATH}/init.vim ~/.config/nvim/init.vim
if [ "$1" = '--classic-vim' ]; then
  ln -s ${SCRIPTPATH}/init.vim ~/.vimrc
fi
printf "${GREEN}Done!${NORMAL}\n"

printf "${CYAN}Create symlinks to tmux.conf...${NORMAL}\n"
mv ~/.tmux.conf ~/.tmux.conf.back
ln -s ${SCRIPTPATH}/tmux.conf ~/.tmux.conf
printf "${GREEN}Done!${NORMAL}\n"

printf "${CYAN}Create symlinks to zshrc...${NORMAL}\n"
mv ~/.zshrc ~/.zshrc.back
ln -s ${SCRIPTPATH}/zshrc ~/.zshrc
printf "${GREEN}Done!${NORMAL}\n"
