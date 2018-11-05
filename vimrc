set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" basics
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-surround'             " surround all the things
Plugin 'ctrlpvim/ctrlp.vim'             " fuzzy searching
Plugin 'mileszs/ack.vim'                " ack functionality
Plugin 'bling/vim-airline'              " status bar
Plugin 'christoomey/vim-tmux-navigator' " tmux integration
Plugin 'timakro/vim-searchant'          " improved search highlighting
Plugin 'junegunn/vim-slash'             " automatically clears search highlight when cursor is moved

" dev tools;
Plugin 'tpope/vim-rails'                " rails goodies
Plugin 'tpope/vim-bundler'              " bundler goodies
Plugin 'tpope/vim-fugitive'             " git goodies
Plugin 'airblade/vim-gitgutter'         " git gutter

" syntax highlighting
Plugin 'jelera/vim-javascript-syntax'
Plugin 'slim-template/vim-slim.git'

" extras
Plugin 'junegunn/goyo.vim'              " distraction-free writing
call vundle#end()
filetype plugin indent on

set nocompatible
filetype off

" relative number
set relativenumber
set number

" remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab

set colorcolumn=80
set ruler

imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
let g:ackprg = 'ag --nogroup --nocolor --column'

syntax enable
colorscheme Lucario

highlight clear SignColumn
let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1
set laststatus=2
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

set incsearch
set hlsearch
set ignorecase
set smartcase

" Splits
set splitright
set splitbelow

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

au FileType gitcommit set tw=80
