"General settings
"-------------------------------------------------------------------------------
scriptencoding utf-8
set encoding=utf-8
set fileencoding=utf-8

source ~/.vim/plugins.vim " Load plugins from vundle
set history=1000 " Set history size to 1000 cmds
set laststatus=2 " Always display status line

"Interface settings
"-------------------------------------------------------------------------------
syntax on " turn syntax highlight on
set number
colorscheme default " define colorscheme for syntax highlight
set background=dark " when dark VIM will try to use colors that look good on dark background
"colorscheme elflord

set showcmd " Show (partial) command in status line
set showmatch " When a bracket is inserted, briefly jumpt to the matching one.
set ruler " Show the line and column number of the cursor position
set wildmenu " Set wildmenu

set tw=80 " number of columns before an automatic line break is inserted 
set colorcolumn=81 " highlight column 81 with red color
set linebreak " (lbr) wrap long lines at a space instead of in the middle of the word


"General indent settings
"-------------------------------------------------------------------------------
set tabstop=4 " width (in spaces) that <tab> is displayed as 
set shiftwidth=4 " width (in spaces) used in each step of autoindent
set softtabstop=4 " a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set expandtab " always uses spaces instead of tab characters
set smarttab " make <tab> insert indents instead of tabs at the beginning of a line


"Emmet settings:
let g:user_emmet_install_global=0

"OmniCompletion (aka InteliSence) on
set omnifunc=syntaxcomplete#Complete
"Uset SuperTab for OmniCompletion 
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:SuperTabDefaultCompletionType = "context"
"Omnicompletion custom colors for tab
highlight Pmenu			ctermfg=0 ctermbg=2
highlight PmenuSel		ctermfg=0 ctermbg=7
highlight PmenuSbar		ctermfg=7 ctermbg=0
highlight PmenuThumb	ctermfg=0 ctermbg=7

"Filetype specific settings
"-------------------------------------------------------------------------------
filetype plugin indent on " enable indent setting based on filetype
"HTML/XML file settings
au FileType xhtml,html,htm,xml setlocal tw=0 colorcolumn=0 " no textwidth for *html/xml files
au FileType xhtml,html,htm,xml setlocal ts=2 sts=2 sw=2

au FileType html,xhml,xml,css,eruby EmmetInstall " use Emmet for *html/xml only

"Settings for ruby
au FileType ruby setlocal ts=2 sw=2 sts=2


"Custom key shortcut
"-------------------------------------------------------------------------------

" => Mapleader
let mapleader = ","
map <Leader>vi :tabe ~/.vimrc <CR>
map <Leader>t  :tabe

"Custom map for Ruby on Rails projects  
map <Leader>trm :tabe app/models/
map <Leader>trv :tabe app/views/
map <Leader>trc :tabe app/controllers/
map <Leader>trh :tabe app/helpers/
map <Leader>tra :tabe app/assets/
map <Leader>trt :tabe test/
map <Leader>trd :tabe db/

"Custom map open my tutorial folder:
map <Leader>ttut :tabe ~/Dropbox/tutorials/


" remap esc to jj exit the insert and replace mode
inoremap jj <esc>

"<F8> togle NERDTree plugin
nmap <silent> <F8> :NERDTreeToggle<CR> 
"<F9> toggle Tagbar plugin
nmap <silent> <F9> :TagbarToggle<CR> 

"Move between windows using h,j,k,l
map <silent> <C-h> :call WinMove('h')<cr>
map <silent> <C-j> :call WinMove('j')<cr>
map <silent> <C-k> :call WinMove('k')<cr>
map <silent> <C-l> :call WinMove('l')<cr>

" Remap save on Ctrl+s
map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>

" Files, backups and undo
" ------------------------------------------------------------------------------

set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp



"Functions
"-------------------------------------------------------------------------------

" Window movement shortcuts
" move to the window in the direction shown, or crete a new window
"
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if ( t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction

