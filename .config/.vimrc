"
"    ^    Lyu Shulun
"  < * >  core.dev.lyu@icloud.com
"    v    https://lyu-shulun.com
"
" A delightful and minimal vim config. file for the full-stack dev.

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1. Manage the vim plugins using Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible		" Make Vim behave in a more useful way
				" Required

filetype off			" Reset filetype detection first ...
				" Required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('$HOME/.vim/vundle-plugins')

Plugin 'VundleVim/Vundle.vim'	" Let Vundle manage Vundle, required
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'morhetz/gruvbox' 

call vundle#end()
filetype plugin indent on	" ... and enable filetype detection
				" Required

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 2. General settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup			" Backup current file ...
set writebackup			" ... Deleted afterwards
set swapfile			" Store the changes you've made to the buffer
set directory^=$HOME/.vim/tmp/swap//	" Aggregate all swap files in one place
set autoread                    " Automatically read changed files
set autoindent                  " Enabile Autoindent
set autowrite                   " Automatically save before :next, :make etc.
set hidden                      " Buffer should still exist if window is closed

set fileencodings=ucs-bom,utf-8,gb2312,gbk,gb18030,default,latin1
set fileformats=unix,dos,mac	" unix, osx: LF; dos: CR LF
set textwidth=0

syntax enable
set ruler
set nonumber
set showcmd
set laststatus=0		" Never show extra status line below
set showmode
set noerrorbells                " No beeps
set splitright                  " Vertical windows should be split to right
set splitbelow                  " Horizontal windows should split to bottom
set nocursorcolumn              " Do not highlight column (speeds up highlighting)
set nocursorline                " Do not highlight cursor (speeds up highlighting)
set lazyredraw                  " Wait to redraw
set completeopt=menu,menuone    " Show popup menu, even if there is one entry
set pumheight=10                " Completion window max size
set ttyfast                     " Indicate fast terminal conn for faster redraw
set ttymouse=xterm2             " Indicate terminal type for mouse codes
set ttyscroll=3                 " Speedup scrolling
set colorcolumn=78

set backspace=indent,eol,start	" makes backspace key more powerful

set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not it begins with upper case

set background=dark
colorscheme gruvbox

" This enables us to undo files even if you exit Vim
if has('persistent_undo')
  set undofile
  set undodir=$HOME/.vim/tmp/undo//
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 3. Remap the keystroke and config the plugins.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","

nnoremap <leader>w :w<CR>
nnoremap <leader>q :wq<CR>
inoremap <leader>w <ESC>:w<CR>
inoremap <leader>q <ESC>:wq<CR>

" Jump to next error with CTRL-n and previous error with CTRL-p
" Close the quickfix window with CTRL-q
map <C-n> :cnext<CR>
map <C-p> :cprevious<CR>
nnoremap <C-q> :cclose<CR>

" These will go to the nextcfound characters and center it
nnoremap n nzzzv
nnoremap N Nzzzv

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 4. Vim scripts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
