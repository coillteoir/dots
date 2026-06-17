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
set mouse=a
syntax on

function VStemp()
    let filename=system('mktemp')
    execute 'vs' . filename
endfunction

command! VStemp call VStemp()
command Vterm vert terminal
command -nargs=1 Vdiff vert Git diff

call plug#begin()
Plug 'hashivim/vim-terraform'
Plug 'junegunn/fzf'
Plug 'othree/vim-autocomplpop'
Plug 'preservim/nerdtree'
Plug 'raimondi/delimitMate'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/L9'
Plug 'wuelnerdotexe/vim-astro'
Plug 'google/vim-jsonnet'
call plug#end()

let g:airline_theme='raven'
let g:astro_typescript='enable'
filetype plugin on
set omnifunc=syntaxcomplete#Complete

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

nnoremap <silent> <Leader>f :FZF<CR>
