" Vundle - vim plugin manager settings
"------------------------------------------------------------------------------
filetype off
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let vundle manage plugins
Bundle 'gmarik/Vundle.vim' 

"List of plugins
"Utilities
Bundle 'kien/ctrlp.vim'
Bundle 'mattn/emmet-vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'

"Ruby on Rails
Bundle 'tpope/vim-rails'

call vundle#end()
