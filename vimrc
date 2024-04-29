set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
" set rtp+=/usr/local/opt/fzf
" set rtp+=/Users/zwilliams/.fzf/bin/fzf

" Set leader key to spacebar
:let mapleader = "\<Space>"

" Move between wrapped lines, rather than jumping over wrapped segments
nmap j gj
nmap k gk

if &compatible
  set nocompatible               " Be iMproved
endif

call plug#begin('~/.vim/plugged')
" basics
" Plug 'gmarik/Vundle.vim
Plug 'tpope/vim-surround'             " surround all the things
Plug 'mileszs/ack.vim'                " ack functionality
Plug 'bling/vim-airline'              " status bar
Plug 'christoomey/vim-tmux-navigator' " tmux integration
Plug 'timakro/vim-searchant'          " improved search highlighting
Plug 'junegunn/vim-slash'             " automatically clears search highlight when cursor is moved
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'connorholyday/vim-snazzy'
" dev tools;
Plug 'tpope/vim-rails'                " rails goodies
Plug 'tpope/vim-bundler'              " bundler goodies
Plug 'tpope/vim-fugitive'             " git goodies
Plug 'airblade/vim-gitgutter'         " git gutter
Plug 'craigemery/vim-autotag'         " seamlessly update ctags

Plug 'chemzqm/vim-jsx-improve'
" syntax highlighting
Plug 'jelera/vim-javascript-syntax'
 Plug 'slim-template/vim-slim'
Plug 'kchmck/vim-coffee-script'

Plug 'morhetz/gruvbox'
Plug 'mtth/scratch.vim'
"Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
 Plug 'w0rp/ale'
Plug 'alvan/vim-closetag'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'David-Kunz/jester'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'github/copilot.vim'
call plug#end()

" colorscheme gruvbox
colorschem snazzy
set background=dark
set cursorline

filetype plugin indent on
set encoding=utf-8

" use system clipboard
set clipboard=unnamedplus

" relative number
" set relativenumber
set number

" remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab

" set colorcolumn=80
" set ruler
" set textwidth=80
" set colorcolumn=+1
" let &colorcolumn="80,".join(range(120,999),",")
" highlight ColorColumn ctermbg=0 guibg=lightgrey

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
" let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
" let g:ctrlp_use_caching = 0


" Ack config
" use ag (sliver searcher)
let g:ackprg = 'ag --nogroup --nocolor --column'
" use Ack! so the first result isn't automatically opened
" shortcut
nnoremap <Leader>F :Ack!<Space>

let g:autotagTagsFile=".tags"
set tags=./.tags;$HOME

" Disable tmux navigator when zooming the Vim pane
let g:tmux_navigator_disable_when_zoomed = 1

" enhance % command so it jumps between keyword pairs (def/end, do/end, etc)
runtime macros/matchit.vim

" GitGutter Config
let g:gitgutter_override_sign_column_highlight = 0
highlight GitGutterAdd    ctermfg=46  ctermbg=NONE guibg=NONE
highlight GitGutterDelete ctermfg=9   ctermbg=NONE guibg=NONE
highlight GitGutterChange ctermfg=220 ctermbg=NONE guibg=NONE

let g:ale_fixers = {
 \ 'javascript': ['eslint', 'trim_whitespace'],
 \ 'typescriptreact': ['eslint', 'trim_whitespace'],
 \ 'ruby': ['prettier', 'trim_whitespace']
 \ }
" let g:ale_sign_error = '❌'
" let g:ale_sign_warning = '⚠️'
let g:ale_fix_on_save = 1
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermbg=NONE ctermfg=9
highlight ALEWarningSign ctermbg=NONE ctermfg=220

" command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

let g:copilot_node_command = "~/.nodenv/shims/node"

" disable perl support
let g:loaded_perl_provider = 0

let g:ale_hover_to_preview = 1

