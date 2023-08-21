" encoding 
set encoding=utf-8
set fileformat=unix
set fileencoding=utf-8

" variables
let mapleader = ","

"General config
syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set incsearch

"Mapping keys
imap jj <esc>
noremap <leader> :

nmap <tab> >>
nmap <s-tab> <<
vmap <tab> >gv
vmap <s-tab> <gv

nmap <s-j> <C-d> 
nmap <s-k> <C-u> 

nmap <s-h> gt 
nmap <s-l>  gT

" plugins
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin()
    Plug 'itchyny/lightline.vim'
    Plug 'vim-scripts/indentpython.vim'
    Plug 'airblade/vim-gitgutter'
    Plug 'dense-analysis/ale'
    Plug 'morhetz/gruvbox'
    Plug 'neoclide/coc.nvim', {'branch': 'release'} 
    Plug 'preservim/nerdtree'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'itchyny/vim-gitbranch'
call plug#end()

" Plugins config
filetype on
filetype plugin indent on

set t_Co=256
set t_ut=

"Configure status bar 
set laststatus=2

" lightline
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

colorscheme gruvbox
set background=dark

map <s-n> <plug>NERDTreeTabsToggle<CR>
map <s-m> <plug>NERDTreeFocusToggle<CR>

let g:ale_sign_error = '❗️'
let g:ale_sign_warning = '⚠️' 
