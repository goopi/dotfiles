install: link

install-osx: link osx

link: install-bash install-screen install-tmux \
	install-vim install-git install-python

install-bash:
	@ln -sfv `pwd`/bin ~/.bin
	@ln -sfv `pwd`/bash/bash_profile ~/.bash_profile
	@ln -sfv `pwd`/bash/bashrc ~/.bashrc
	@ln -sfv `pwd`/bash/profile ~/.profile
	@ln -sfv `pwd`/bash/inputrc ~/.inputrc
	@mkdir -p ~/.bash
	@ln -sfv `pwd`/bash/aliases.sh ~/.bash/aliases.sh
	@ln -sfv `pwd`/bash/completion.sh ~/.bash/completion.sh
	@ln -sfv `pwd`/bash/functions.sh ~/.bash/functions.sh

install-vim:
	@ln -sfv `pwd`/ctags/ctags ~/.ctags
	@ln -sfv `pwd`/vim ~/.vim
	@ln -sfv ~/.vim/vimrc ~/.vimrc

install-git:
	@ln -sfv `pwd`/git/gitconfig ~/.gitconfig
	@ln -sfv `pwd`/git/gitignore ~/.gitignore

install-python:
	@ln -sfv `pwd`/python/pythonstartup.py ~/.pythonstartup.py

install-screen:
	@ln -sfv `pwd`/screen/screenrc ~/.screenrc

install-tmux:
	@ln -sfv `pwd`/tmux/tmux.conf ~/.tmux.conf

osx:
	@sh -c `pwd`/homebrew/install-brew.sh
	@sh -c `pwd`/osx/set-defaults.sh
