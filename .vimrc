filetype plugin on
set nowrap
set rnu
set number
set incsearch
set hlsearch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set cursorline
set noswapfile
set autoread
set encoding=utf-8
syntax on


call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'wuelnerdotexe/vim-astro'
Plug 'hashivim/vim-terraform'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-sleuth'
Plug 'raimondi/delimitMate'
Plug 'othree/vim-autocomplpop'
Plug 'vim-scripts/L9'
Plug 'junegunn/fzf'
call plug#end()

let g:airline_theme='raven'
let g:astro_typescript='enable'
filetype plugin on
set omnifunc=syntaxcomplete#Complete

nnoremap <silent> <Leader>f :FZF<CR>
