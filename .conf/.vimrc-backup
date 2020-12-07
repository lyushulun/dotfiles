" ===========================================================================
" vimrc - a delightful and minimum vim conf for the web dev.
" Copyright (c) 2020 John Shulun Lyu & Contributers
" Author: John Shulun Lyu <john@johnshulunlyu.com>
" URL: https://github.com/johnshulun/dotfile
" License: GPLv3
" ===========================================================================

" ===========================================================================
"               1. Manage the vim plugins using vim-plug                     
" ===========================================================================
set nocompatible    " Make Vim behave in a more useful way.
filetype off        " Reset filetype detection first ...

call plug#begin('~/.vim/plugged')

" 1. Appearence associated.
Plug 'morhetz/gruvbox'
Plug 'w0ng/vim-hybrid'
Plug 'altercation/vim-colors-solarized'
Plug 'dracula/vim'
Plug 'sickill/vim-monokai'

" A fancy start screen for Vim.
Plug 'mhinz/vim-startify'

" Display thin vertical lines at each indentation level for code indented with
" spaces.
Plug 'yggdroot/indentline'

" 2. File system explorer (directory hierarchies) associated.
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

" A plugin of NERDTree showing git status flags.
Plug 'Xuyuanp/nerdtree-git-plugin'

" 3. Find files
" Ag [PATTERN]
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Fuzzy file, butter, mru, tag, etc finder
" Plug 'ctrlpvim/ctrlp.vim'

" Quick find in a file.
Plug 'easymotion/vim-easymotion'

" 4. Edit files
" Add text-object: s (ds, cs, ys: add a surrounding)
Plug 'tpope/vim-surround'

" Find and repalce
" error to be fixed.
" Plug ' rooth/far.vim'

" Displays tags in a window, ordered by scope.
Plug 'majutsushi/tagbar'

" Highlight and navigate through different words in a buffer.
Plug 'lfv89/vim-interestingwords'

" Quick comment: gc
Plug 'tpope/vim-commentary'

" 5. Integration
" A git wrapper
" Plug 'tpope/vim-fugitive'

" Shows a git diff in the sign column.
" Plug 'airblade/vim-gitgutter'

" A git commit browser
" Plug 'junegunn/gv.vim'

" Browse GitHub events (user dashboard, user/repo activity).
" :GHD! johnshulunlyu / :GHA! johshulunlyu / :GHA! johnshulunlyu/dotfiles
Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity'] }

call plug#end()

" ===========================================================================
"                       2. General settings                                  
" ===========================================================================
set nobackup            " Stop annoying backup file.
set writebackup         " Backup file, and delete it after save sucessfully.
set swapfile            " Store the changes you've made to the buffer.
set directory^=$HOME/.vim/tmp/swap//    
                        " Aggregate all swap files in one place.

set autoread            " Automatically read changed files.
                        " After back to buffer, you should :e .
set autowrite           " Automatically save before :next, :make etc.
set hidden              " Buffer should still exist if window is closed.

set encoding=utf-8      " Character encoding used inside Vim.
set fileencodings=ucs-bom,utf-8,gb18030,default,latin1
                        " A list of character encodings is used to set the 
                        " fileencoding value by Vim when read a new file.
 
set textwidth=0         " Set textwidth by hand.
set fileformats=unix,dos    
                        " unix, osx: LF; dos: CR LF; ox 9-: CR.
set autoindent
set smartindent         " Do smart autoindenting when starting a new line.

set ruler
set nonumber
set showcmd
set foldmethod=manual   " Lines with equal indent form a fold.
set laststatus=0        " Never show extra status line below
set showmode
set noerrorbells        " No beeps
set splitright          " Vertical windows should be split to right
set splitbelow          " Horizontal windows should split to bottom
set nocursorcolumn      " Do not highlight column (speeds up highlighting)
set nocursorline        " Do not highlight cursor (speeds up highlighting)
set lazyredraw          " Wait to redraw
set completeopt=menu,menuone    
                        " Show popup menu, even if there is one entry
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

set pastetoggle=<F2>    " Toggle paste mode by using F2

" This enables us to undo files even if you exit Vim
if has('persistent_undo')
    set undofile
    set undodir=$HOME/.vim/tmp/undo//
endif

" One indent == One tab key (Use spaces instead of tab characters)
" One indent == 4 spaces
set tabstop=4       " Numbers of spaces that a tab counts for.
set softtabstop=0   " Turn off this feature.
set expandtab       " Use spaces instead of tab characters.
set shiftwidth=4    " One indent equals to 4 spaces (that also means one indent
                    " equals to one tab length.
set smarttab        " Inserts blanks according to the context.

" ===========================================================================
"               3. Remap the keystroke and config the plugins.               
" ===========================================================================
let mapleader = ","

nnoremap <leader>w :w<CR>
nnoremap <leader>q :wq<CR>
inoremap <leader>w <ESC>:w<CR>
inoremap <leader>q <ESC>:wq<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" NERDTree
" Configurate NERDTree
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

let NERDTreeShowHidden=1

" vim-easymotion
nmap ff <Plug>(easymotion-s2)

" tag-bar
nnoremap <leader>o :TagbarToggle<CR>

" ===========================================================================
"                           4. Vim scripts                                   
" ===========================================================================
" Sudo to write
cnoremap w!! w !sudo tee % >/dev/null

" JSON formatter
com! FormatJSON %!python3 -m json.tool
