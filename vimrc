set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'mileszs/ack.vim'
Plugin 'mattn/emmet-vim'
Plugin 'tomtom/tlib_vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-rails'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'moll/vim-node'
Plugin 'jelera/vim-javascript-syntax'

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
colorscheme Tomorrow-Night-Bright

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
