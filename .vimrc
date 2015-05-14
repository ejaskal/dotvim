"Basic settings
scriptencoding utf-8
colorscheme elflord
set nu
syntax on

"80 chars text width + 81 red line column
set tw=80
set colorcolumn=81
"Enable Pathogen plugin
call pathogen#infect()
call pathogen#helptags()
"enable smartindent
filetype plugin on
filetype plugin indent on

"Emmet settings:
let g:user_emmet_install_global=0
autocmd FileType html,xhml,xml,css,eruby EmmetInstall

"setting Tab size 
set tabstop=4
"size of indent 
set shiftwidth=4 
" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4
" always uses spaces instead of tab characters
set expandtab
" make 'tab' insert indents instead of tabs at the beginning of a line
set smarttab


nnoremap <silent> <F9> :TagbarToggle<CR>
nmap <silent> <F8> :NERDTreeToggle<CR>
"setting wildmenu
set wildmenu

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


