set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf

" Set leader key to spacebar
:let mapleader = "\<Space>"

" Move between wrapped lines, rather than jumping over wrapped segments
nmap j gj
nmap k gk

call vundle#begin()
" basics
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-surround'             " surround all the things
Plugin 'mileszs/ack.vim'                " ack functionality
Plugin 'bling/vim-airline'              " status bar
Plugin 'christoomey/vim-tmux-navigator' " tmux integration
Plugin 'timakro/vim-searchant'          " improved search highlighting
Plugin 'junegunn/vim-slash'             " automatically clears search highlight when cursor is moved
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-commentary'

" dev tools;
Plugin 'tpope/vim-rails'                " rails goodies
Plugin 'tpope/vim-bundler'              " bundler goodies
Plugin 'tpope/vim-fugitive'             " git goodies
Plugin 'airblade/vim-gitgutter'         " git gutter
Plugin 'craigemery/vim-autotag'         " seamlessly update ctags

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

" set colorcolumn=80
" set ruler
set textwidth=80
set colorcolumn=+1
let &colorcolumn="80,".join(range(120,999),",")
highlight ColorColumn ctermbg=0 guibg=lightgrey


" Swap 0 and ^. I tend to want to jump to the first non-whitespace character
" so make that the easier one to do.
nnoremap 0 ^
nnoremap ^ 0

syntax enable

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

set splitright

" Ctrl-t opens fzf file finder
nnoremap <C-t> :Files<cr>

" Quickly toggle to previous file
nnoremap <leader><leader> <c-^>

au FileType gitcommit set tw=80

" ctrl-p uses ag (silver searcher) for listing files because speed
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0

" use ag (sliver searcher)
let g:ackprg = 'ag --nogroup --nocolor --column'

let g:autotagTagsFile=".git/tags"
" Disable tmux navigator when zooming the Vim pane
let g:tmux_navigator_disable_when_zoomed = 1

" enhance % command so it jumps between keyword pairs (def/end, do/end, etc)
runtime macros/matchit.vim

" GitGutter Config
let g:gitgutter_override_sign_column_highlight = 0
highlight GitGutterAdd    ctermfg=46  ctermbg=NONE guibg=NONE
highlight GitGutterDelete ctermfg=9   ctermbg=NONE guibg=NONE
highlight GitGutterChange ctermfg=220 ctermbg=NONE guibg=NONE

