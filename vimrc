set nocompatible

set ruler
set showmatch
set showmode

set number

set wildmenu
set showcmd

set laststatus=2

" edit settings
set backspace=indent,eol,start
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" search settings
set hlsearch
set ignorecase
set smartcase
set incsearch

" status line
set statusline=[%{winnr()}]
set statusline+=%([\%R%M]\ %)
set statusline+=%<%f
set statusline+=%(\ %y%)
set statusline+=%=
set statusline+=%4(%p%%%)

" leader
let mapleader=" "

nnoremap <space>l <C-w>l
nnoremap <space>h <C-w>h
nnoremap <space>j <C-w>j
nnoremap <space>k <C-w>k

" tab navigation
nmap <space>H :tabprevious<cr>
nmap <space>L :tabNext<cr>

call plug#begin('~/.vim/bundle')

Plug 'junegunn/seoul256.vim'
Plug 'tpope/vim-fugitive'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'posva/vim-vue'
Plug 'dense-analysis/ale'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

call plug#end()

" syntax highlighting
" colo seoul256
" set background=dark
" colorscheme solarized
syntax on

" dense-analysis/ale
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\}

let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:airline#extensions#ale#enabled = 1

" vue
let g:ale_linter_aliases = {'vue': ['vue', 'javascript']}
let g:ale_linters = {'vue': ['eslint', 'vls']}

" nerd tree git plugin
let g:NERDTreeGitStatusConcealBrackets = 1
