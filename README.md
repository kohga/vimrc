# **vimrc**
**Version 1.2**   
**For Linux and MacOS**   


## **Summary**
This project is the setting of vim.   



## **How to**

### For Linux

**1. Install**   
#### _Debian, Ubuntu_
1-1. Install vim and gvim   
ex)   
```
$ sudo apt-get install vim
$ sudo apt-get install vim-gtk
```

1-2. Install git   
ex)   
```
$ sudo apt-get install git
```

#### _CentOS, Fedora, Red Hat Enterprise Linux_
1-1. Install vim and gvim   
ex)   
```
$ sudo yum install vim
$ sudo yum install vim-gtk
```

1-2. Install git   
ex)   
```
$ sudo yum install git
```

**2. Make**
```
$ make
or
$ make safety
(If you want to backup)
or
$ make deep
(If you want to have a symbolic link to the root user)
or
$ make shallow
(If there is already a setting file of this project)
```
For Linux, ``$ make`` is fine.   


### For MacOS
**1. Install Homebrew and git**   
ex)   
```
$ xcode-select --install
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew install git
```
**2. Install MacVim [from Kaoriya](https://github.com/splhack/macvim-kaoriya)**


**3. Make**
```
$ make mac
or
$ make macsafety
(If you want to backup)
or
$ make macdeep
(If you want to have a symbolic link to the root user)
or
$ make macshallow
(If there is already a setting file of this project)
```
For MacOS, ``$ make mac`` is fine.   


**4. Set Aliases**   
ex) .bash_profile   
```
if [ -f /Applications/MacVim.app/Contents/MacOS/Vim ]; then
	export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
	alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
	alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
	alias gvim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/bin/mvim "$@"'
fi
```
```
$ source ~/.bash_profile
```



## Make Target

- safety   
- deep   
- shallow   

- mac   
- macsafety   
- macshallow   

- allclean   
- vimclean   
- rootclean   
- clean   

- lnroot   

- setmac   
