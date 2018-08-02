#!/bin/bash

# print logo
printf "\n"
printf " +-+-+-+-+-+-+-+-+-+ by\n"
printf " |a|r|c|h|l|i|n|u|x| rory\n"
printf " +-+-+-+-+-+-+-+-+-+-+-+-+\n"
printf " |b|o|o|t|s|t|r|a|p|p|e|r|\n"
printf " +-+-+-+-+-+-+-+-+-+-+-+-+\n\n"

# prompt for xfce4 themes and icons
printf "Would you like to install xfce4 icons and themes? [y|N]: "
read -n1 ans

printf "\n\n"

if [ "$ans" = "y" ] || [ "$ans" = "Y" ]; then
	ln -sv $HOME/.dotfiles/xfce4/.themes $HOME/.themes
	ln -sv $HOME/.dotfiles/xfce4/.icons $HOME/.icons
fi
unset ans

# we are going to setup symbolic links for all the files, and everything will just physically live in the .dotfiles folder in the home directory

# link runcom dotfiles for shell
ln -sv $HOME/.dotfiles/runcom/.bash_profile $HOME/.bash_profile
ln -sv $HOME/.dotfiles/runcom/.bash_prompt $HOME/.bash_prompt
ln -sv $HOME/.dotfiles/runcom/.bashrc $HOME/.bashrc
ln -sv $HOME/.dotfiles/runcom/.aliases $HOME/.aliases
ln -sv $HOME/.dotfiles/runcom/.exports $HOME/.exports

# link ssh dotfiles
ln -sv $HOME/.dotifles/.ssh $HOME/.ssh

# link vim dotfiles
ln -sv $HOME/.dotfiles/.vim $HOME/.vim
ln -sv $HOME/.dotfiles/.vimrc $HOME/.vimrc

# link screen dotfiles
ln -sv $HOME/.dotfiles/.screenrc $HOME/.screenrc

# time to install programs

# prompt the user to see if they want programs installed
printf "\nPrograms List:\n"
printf "curl, gcc, git, go, grep, gzip, lua, neofetch, net-tools, nmap, openssh, vim, wget\n"
printf "Would you like to install these programs using pacman? [y|N]: "
read -n1 ans

printf "\n"

if [ "$ans" = "y" ] || [ "$ans" = "Y" ]; then
	sudo pacman -Syyu && sudo pacman -S curl gcc git go grep gzip lua neofetch net-tools nmap openssh vim wget
fi
unset ans
