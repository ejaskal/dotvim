"General settings
"-------------------------------------------------------------------------------
set nocompatible
scriptencoding utf-8
set encoding=utf-8
set fileencoding=utf-8

source ~/.vim/plugins.vim " Load plugins from vundle
set history=1000 " Set history size to 1000 cmds
set undolevels=1000 " use many levels of undo
set laststatus=2 " Always display status line

set hidden " Set buffers hidden instead of close once open another file

"Interface settings
"-------------------------------------------------------------------------------
syntax on " turn syntax highlight on
set number
set t_Co=256 "Use 256 color scheme
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
set autoindent  " always set autoindent on 
set copyindent  " copy the previous indentation on autoindenting
set tabstop=2 " width (in spaces) that <tab> is displayed as 
set shiftwidth=2 " width (in spaces) used in each step of autoindent
set softtabstop=2 " a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set expandtab " always uses spaces instead of tab characters
set smarttab " make <tab> insert indents instead of tabs at the beginning of a line

"IndentLine plugin custom settings
"let g:indentLine_char = '┆'
let g:indentLine_color_term = 9

"Search setting
"-------------------------------------------------------------------------------
set ignorecase  " ignore case when searching
set smartcase   " ignore case if search ptrn is all lowercase
set hlsearch    " highlight search terms
set incsearch   " show search matches as you type


"Plugins settings
"-------------------------------------------------------------------------------

"Emmet settings:
let g:user_emmet_install_global=0

"OmniCompletion (aka InteliSence) on
"set omnifunc=syntaxcomplete#Complete
"Uset SuperTab for OmniCompletion 
"let g:SuperTabDefaultCompletionType = "context"
"Omnicompletion custom colors for tab
highlight Pmenu			ctermfg=0 ctermbg=2
highlight PmenuSel		ctermfg=0 ctermbg=7
highlight PmenuSbar		ctermfg=7 ctermbg=0
highlight PmenuThumb	ctermfg=0 ctermbg=7


"YCM, compitable with UltiSnips
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previos_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

"Ultisnips plugin settings
let g:UltisnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


"Vim-Airline plugin settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='luna'


"Syntastic plugin settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0



"Filetype specific settings
"-------------------------------------------------------------------------------
filetype plugin indent on " enable indent setting based on filetype
"HTML/XML file settings
au FileType xhtml,html,htm,xml setlocal tw=0 colorcolumn=0 " no textwidth for *html/xml files
au FileType xhtml,html,htm,xml setlocal ts=2 sts=2 sw=2

au FileType html,xhml,xml,css,eruby EmmetInstall " use Emmet for *html/xml only

"Settings for ruby
au FileType ruby setlocal ts=2 sw=2 sts=2 expandtab

"Javascript
au FileType javascript setlocal sw=2 ts=2 sts=2 expandtab
au FileType javascript setlocal commentstring=//\ %s
let javascript_enable_domhtmlcss=1
let g:syntastic_javascript_checkers = ['jshint']

"Java
au FileType java setlocal sw=2 ts=8 sts=2 expandtab
au FileType java setlocal commentstring=//\ %s

"VIM
au FileType vim setlocal sw=2 ts=2 sts=2 expandtab



"Custom key shortcut
"-------------------------------------------------------------------------------
"Replace ; with :
nnoremap ; :
"Stop using arrows
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" => Mapleader
let mapleader = ","

"Tab mapping
map <Leader>t  :tabe<Space>

"Buffer mapping
map <Leader>b :b<Space>
map <Leader>h :bp<CR>
map <Leader>l :bn<CR>
map <Leader>ba :badd<Space>

"VIM config shortcuts
map <Leader>vi :badd ~/.vimrc <CR>
map <Leader>vip :badd ~/.vim/plugins.vim <CR>

"Custom map for Ruby on Rails projects  
map <Leader>brm :badd app/models/
map <Leader>brv :badd app/views/
map <Leader>brc :badd app/controllers/
map <Leader>brh :badd app/helpers/
map <Leader>bra :badd app/assets/
map <Leader>brt :badd test/
map <Leader>brd :badd db/

"Custom map open my tutorial folder:
map <Leader>btut :badd ~/Dropbox/tutorials/


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

