"Basic settings
"-------------------------------------------------------------------------------
scriptencoding utf-8 
syntax on " turn syntax highlight on
set number
colorscheme default " define colorscheme for syntax highlight
"set background=dark " when dark VIM will try to use colors that look good on dark background
"colorscheme elflord

set showcmd " Show (partial) command in status line
set showmatch " When a bracket is inserted, briefly jumpt to the matching one.
set ruler " Show the line and column number of the cursor position

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

"setting wildmenu
set wildmenu


" VIM Plugins and addons
"-------------------------------------------------------------------------------
"Enable Pathogen plugin
call pathogen#infect()
call pathogen#helptags()

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

"File specific settings
"-------------------------------------------------------------------------------
filetype plugin indent on " enable indent setting based on filetype
"HTML/XML file settings
au FileType xhtml,html,htm,xml setlocal tw=0 colorcolumn=0 "no textwidth for *html/xml files
au FileType xhtml,html,htm,xml setlocal tabstop=2  
au FileType xhtml,html,htm,xml setlocal shiftwidth=2  
au FileType xhtml,html,htm,xml setlocal softtabstop=2

au FileType html,xhml,xml,css,eruby EmmetInstall "use Emmet for *html/xml only


"Custom key shortcut
"-------------------------------------------------------------------------------
"<F8> togle NERDTree plugin
nmap <silent> <F8> :NERDTreeToggle<CR> 
"<F9> toggle Tagbar plugin
nnoremap <silent> <F9> :TagbarToggle<CR> 
