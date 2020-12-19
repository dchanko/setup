#!/bin/bash

sudo apt update

# Core Tools
sudo apt install curl


# Vim
sudo apt install vim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cat > ~/.vimrc << _EOF_
inoremap jk <ESC>
_EOF_

vim +'PlugInstall --sync' +qa


# .NET Core 

wget https://packages.microsoft.com/config/ubuntu/20.10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

sudo apt-get install -y apt-transport-https && \
	sudo apt-get install -y dotnet-sdk-3.1






