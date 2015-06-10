all: link install

link:
	@ln -sfv `pwd`/bin ~/.bin
	@ln -sfv `pwd`/bash_profile ~/.bash_profile
	@ln -sfv `pwd`/bashrc ~/.bashrc
	@ln -sfv `pwd`/inputrc ~/.inputrc
	@ln -sfv `pwd`/gitconfig ~/.gitconfig
	@ln -sfv `pwd`/gitignore ~/.gitignore
	@ln -sfv `pwd`/tmux.conf ~/.tmux.conf
	@ln -sfv `pwd`/pythonstartup.py ~/.pythonstartup.py
	@ln -sfv `pwd`/vim ~/.vim
	@ln -sfv ~/.vim/vimrc ~/.vimrc

install:
	@sh -c `pwd`/brew.sh
	@sh -c `pwd`/osx.sh