"Basic settings
scriptencoding utf-8
set tw=80
set colorcolumn=81

"Enable Pathogen plugin
call pathogen#infect()
call pathogen#helptags()

syntax on
set nu
set tabstop=4 "setting Tab size 
set shiftwidth=4 "size of indent
" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4 "
nnoremap <silent> <F9> :TagbarToggle<CR>
nmap <silent> <F8> :NERDTreeToggle<CR>
set wildmenu

colorscheme elflord


"OmniCompletion (aka InteliSence) on
filetype plugin on
set omnifunc=syntaxcomplete#Complete
"Uset SuperTab for OmniCompletion 
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:SuperTabDefaultCompletionType = "context"
"Omnicompletion custom colors for tab
highlight Pmenu			ctermfg=0 ctermbg=2
highlight PmenuSel		ctermfg=0 ctermbg=7
highlight PmenuSbar		ctermfg=7 ctermbg=0
highlight PmenuThumb	ctermfg=0 ctermbg=7


