CUR_DIR=$(shell pwd)


all: linux

linux: ~/.vim ~/.vim_undo
	cp vimrc ~/.vimrc
	cp gvimrc ~/.gvimrc

mac: ~/.vim ~/.vim_undo
	cp vimrc ~/.vimrc
	cp gvimrc_mac ~/.gvimrc

~/.vim:
	mkdir -p ~/.vim/bundle
	git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

~/.vim_undo:
	mkdir -p ~/.vim_undo

backup: ${CUR_DIR}/vim_backup
	cp -r ~/.vim ${CUR_DIR}/vim_backup/
	cp ~/.vimrc ${CUR_DIR}/vim_backup/
	cp ~/.gvimrc ${CUR_DIR}/vim_backup/

${CUR_DIR}/vim_backup:
	mkdir -p ${CUR_DIR}/vim_backup

root:
	sudo ln -sv ~/.vim /root/.vim
	sudo ln -sv ~/.vimrc /root/.vimrc
	sudo ln -sv ~/.gvimrc /root/.gvimrc

vimclean:
	rm -rf ~/.vim
	rm -f ~/.vimrc
	rm -f ~/.gvimrc

rootclean:
	sudo rm -rf /root/.vim
	sudo rm -f /root/.vimrc
	sudo rm -f /root/.gvimrc

clean:
	rm -rf ${CUR_DIR}/vim_backup


FORCE:

.PHONY: all clean linux mac backup root vimclean rootclean FORCE
