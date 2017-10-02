# vimrc
**Version 1.0**   
**For Linux and MacOS**   


## Summary
This project is the setting of vim.   



## How to

**Linux**
----

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

**2. Make Backup**
```
$ make backup
```

**3. Make vimrc**
```
$ make
```

**4. Make SymbolicLink (root)**
```
$ make root
```
If Error occurred...
```
$ make rootclean
$ make root
```


**MacOS**
----
**1. Install Homebrew and git**   
ex)   
```
$ xcode-select --install
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew install git
```
**2. Install MacVim [from Kaoriya](https://github.com/splhack/macvim-kaoriya)**

**3. Make Backup**
```
$ make backup
```

**4. Make vimrc**
```
$ make mac
```

