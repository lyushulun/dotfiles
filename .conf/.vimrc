"   ***   Lyu Shulun
"  *****  core.dev.lyu@icloud.com
"   ***   https://lyu-shulun.com
"
" A delightful and minimal vim conf file for the full-stack dev.


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"               1. Manage the vim plugins using vim-plug                     "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible    " Make Vim behave in a more useful way.
filetype off        " Reset filetype detection first ...

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes.

" Retro groove color scheme for Vim.
Plug 'morhetz/gruvbox'

" Initialize plugin system. 
call plug#end()

filetype plugin indent on   " ... and enable filetype detection


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       2. General settings                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nobackup            " Stop annoying backup file.
set writebackup         " Backup file, and delete it after save sucessfully.
set swapfile            " Store the changes you've made to the buffer.
set directory^=$HOME/.vim/tmp/swap//    " Aggregate all swap files in one place.
set autoread            " Automatically read changed files.
set autowrite           " Automatically save before :next, :make etc.
set hidden              " Buffer should still exist if window is closed.

set fileencodings=ucs-bom,utf-8,gb2312,gbk,gb18030,default,latin1
                        " A list of character encodings used to edit an
                        " existing file.
set textwidth=0         " Set textwidth by hand.
set fileformats=unix,dos,mac    " unix, osx: LF; dos: CR LF.
set autoindent

syntax enable
set ruler
set nonumber
set showcmd
set laststatus=0        " Never show extra status line below
set showmode
set noerrorbells        " No beeps
set splitright          " Vertical windows should be split to right
set splitbelow          " Horizontal windows should split to bottom
set nocursorcolumn      " Do not highlight column (speeds up highlighting)
set nocursorline        " Do not highlight cursor (speeds up highlighting)
set lazyredraw          " Wait to redraw
set completeopt=menu,menuone    " Show popup menu, even if there is one entry
set pumheight=10        " Completion window max size
set ttyfast             " Indicate fast terminal conn for faster redraw
set ttymouse=xterm2     " Indicate terminal type for mouse codes
set ttyscroll=3         " Speedup scrolling
set colorcolumn=78      " A specific column is highlighted.

set backspace=indent,eol,start  " makes backspace key more powerful

set incsearch           " Shows the match while typing
set hlsearch            " Highlight found searches
set ignorecase          " Search case insensitive...
set smartcase           " ... but not it begins with upper case

set background=dark
colorscheme gruvbox

" This enables us to undo files even if you exit Vim
if has('persistent_undo')
  set undofile
  set undodir=$HOME/.vim/tmp/undo//
endif

" One indent == One tab key (Use spaces instead of tab characters)
" One indent == 4 spaces
set tabstop=4       " The width of a hard tabstop measured in "spaces"
            " - effectively the (maximum) width of an actual tab
            " character.
set shiftwidth=4    " The size of an "indent". If your code base indents
            " with tab characters then you want 'shiftwidth' to
            " equal the number of tab characters times 'tabstop'.
set softtabstop=0
set expandtab       " Enabling this will make the tab key (insert mode)
            " insert spaces instead of tab characters.
set smarttab

set tabstop=4       " Numbers of spaces that a tab counts for.
set softtabstop=0   " Turn off this feature.
set expandtab       " Use spaces instead of tab characters.
set shiftwidth=4    " One indent equals to 4 spaces (that also means one indent
                    " equals to one tab length.
set smarttab        " Discover?

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"               3. Remap the keystroke and config the plugins.               "
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
" nnoremap n nzzzv
" nnoremap N Nzzzv

" Configurate vim-plug
let g:plug_window = "vertical topleft new"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           4. Vim scripts                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
