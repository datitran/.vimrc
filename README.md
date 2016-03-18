# VIM

This is my personal VIM setting which is mainly inspired by [Janus](https://github.com/carlhuda/janus). It is optimized for MacVim and I used it along with Python3/Anaconda.
I started to use VIM with Janus but felt that it would be better to build up my own `.vimrc`. The benefits are better
control of configs, less unused plugins and a higher learning curve.

#### Getting started
1. Install Vim with brew `brew install vim --with-python3 --with-lua`.
2. Install MacVim with brew `brew install macvim --with-python3 --with-cscope --with-lua`.
3. Set up [Vundle](https://github.com/VundleVim/Vundle.Vim): `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`.
4. I store all the backup and swap files in a central folder i.e. use this command `mkdir ~/.vim/.backup ~/.vim/.swp ~/.vim/.undo` to create those directories.
5. Clone the `.vimrc` in your root folder and then run `:PluginInstall` in VIM.

#### Helpful links
- [http://vimawesome.com/](http://vimawesome.com/)
