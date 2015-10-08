" Vundle - vim plugin manager settings
"------------------------------------------------------------------------------
set nocompatible
filetype off
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let vundle manage plugins
Plugin 'gmarik/Vundle.vim' 

"List of plugins
"Utilities
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'majutsushi/tagbar'
"Indent plugin
Plugin 'Yggdroot/indentLine'
"Delimate plugin
Plugin 'Raimondi/delimitMate'

"Ruby on Rails
Plugin 'tpope/vim-rails'

call vundle#end()
