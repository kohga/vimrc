CUR_DIR=$(shell pwd)

all: vimclean cprc
safety: backup vimclean cprc
deep: all lnroot
shallow: cprc

# mac If the target is mac
mac: all setmac
macsafety: safety setmac
macshallow: shallow setmac

#
# main
#
cprc: ~/.vim ~/.vim_undo vimrc gvimrc
	cp vimrc ~/.vimrc
	cp gvimrc ~/.gvimrc

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

#
# clean
#
allclean: vimclean rootclean clean

vimclean:
	rm -rf ~/.vim
	rm -f ~/.vimrc
	rm -f ~/.gvimrc
	rm -rf ~/.vim_undo

rootclean:
	sudo rm -rf /root/.vim
	sudo rm -f /root/.vimrc
	sudo rm -f /root/.gvimrc

clean:
	rm -rf ${CUR_DIR}/vim_backup

#
# sub
#
lnroot:
	sudo ln -sv ~/.vim /root/.vim
	sudo ln -sv ~/.vimrc /root/.vimrc
	sudo ln -sv ~/.gvimrc /root/.gvimrc

setmac: gvimrc_mac
	cp gvimrc_mac ~/.gvimrc
