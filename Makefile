install: link install-brew install-osx

link: install-bash install-screen install-tmux \
	install-vim install-git install-python

install-brew:
	@sh -c `pwd`/homebrew/install-brew.sh

install-osx:
	@sh -c `pwd`/osx/set-defaults.sh

install-bash:
	@ln -sfhv `pwd`/bin ~/.bin
	@ln -sfhv `pwd`/bash/bash_profile ~/.bash_profile
	@ln -sfhv `pwd`/bash/bashrc ~/.bashrc
	@ln -sfhv `pwd`/bash/profile ~/.profile
	@ln -sfhv `pwd`/bash/inputrc ~/.inputrc
	@mkdir -p ~/.bash
	@ln -sfhv `pwd`/bash/aliases.sh ~/.bash/aliases.sh
	@ln -sfhv `pwd`/bash/completion.sh ~/.bash/completion.sh
	@ln -sfhv `pwd`/bash/functions.sh ~/.bash/functions.sh

install-vim:
	@ln -sfhv `pwd`/ctags/ctags ~/.ctags
	@ln -sfhv `pwd`/vim ~/.vim
	@ln -sfhv ~/.vim/vimrc ~/.vimrc

install-git:
	@ln -sfhv `pwd`/git/gitconfig ~/.gitconfig
	@ln -sfhv `pwd`/git/gitignore ~/.gitignore

install-python:
	@ln -sfhv `pwd`/python/pythonstartup.py ~/.pythonstartup.py

install-screen:
	@ln -sfhv `pwd`/screen/screenrc ~/.screenrc

install-tmux:
	@ln -sfhv `pwd`/tmux/tmux.conf ~/.tmux.conf
