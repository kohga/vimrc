all: linux

linux: backup ~/.vim
	cp vimrc ~/.vimrc
	cp gvimrc ~/.gvimrc

mac: backup
	cp vimrc ~/.vimrc
	cp gvimrc_mac ~/.gvimrc

backup: ~/vim_backup
	cp -r ~/.vim ~/vim_backup/
	cp ~/.vimrc ~/vim_backup/
	cp ~/.gvimrc ~/vim_backup/

~/vim_backup:
	mkdir -p ~/vim_backup
