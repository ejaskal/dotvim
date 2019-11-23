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
"Syntax checking plugin
"Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'majutsushi/tagbar'
"Indent plugin - ident handling
Plugin 'Yggdroot/indentLine'
"Delimate plugin 
Plugin 'Raimondi/delimitMate'
"YouCompleteMe plugin - autocompletion
"Plugin 'Valloric/YouCompleteMe'
"SuperTab plugin
Plugin 'ervandew/supertab'
"Snippet plugin + snippet lib
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
"Vim-airline plugin - status tabline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'bling/vim-airline'
"Ruby on Rails
Plugin 'tpope/vim-rails'
"Plugin for TypeScript
Plugin 'leafgarland/typescript-vim'
"Plugin for Collaboration in VIM
Plugin 'FredKSchott/CoVim'


call vundle#end()
