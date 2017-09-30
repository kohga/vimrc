 .vimrc (For Linux and MacOS)
 By Kohki HAGA

----
 HOW TO USE
 $ mv .vimrc ~/.vimrc

*********
 If you want to install manually, please install git and setup NeoBundle!

 $ sudo apt-get install git
 or
 $ sudo apt install git
 or
 $ sudo yum install git

 $ mkdir -p ~/.vim/bundle
 $ git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

 $ sudo chmod 777 ~/.vim/bundle/.neobundle/*

 ----
 When you want to use any administrative privileges (root)
 $ sudo vim -u ~/.vimrc
 or
 $ sudo ln -s ~/.vimrc /root/.vimrc


 *********
 If you are using Mac OS X.
 $ curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
 $ sh ./install.sh

