" ===========================================================================
" vimrc - a delightful and minima vim conf for the web dev.
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

" A minimalist Vim plugin manager: junegunn/vim-plug
"
" Pros.:
" 1. On-demand loading for fater startup time
" Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"
" 2. Can review and rollback updates
" 3. Branch/tag/commit support
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
" Plug 'fatih/vim-go', { 'tag': '*' }
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
"
" 4. Post-update hooks
" Plug '', { 'dir': '~/.fzf', 'do': './install --all' }
"
" 5. Support for externally managed plugins
" Plug '~/my-prototype-plugin'

" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes.

" 1. Appearence associated.
Plug 'morhetz/gruvbox'
Plug 'w0ng/vim-hybrid'
Plug 'altercation/vim-colors-solarized'
Plug 'dracula/vim'
Plug 'sickill/vim-monokai'

" A fancy start screen for Vim.
Plug 'mhinz/vim-startify'

Plug 'yggdroot/indentline'

" 2. File system explorer (directory hierarchies) associated.
" The NERDTree is a file system explorer for Vim.
" NERD tree will be loaded on the first invocation of NERDTreeToggle command.
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" A plugin of NERDTree showing git status flags.
Plug 'Xuyuanp/nerdtree-git-plugin'

" 3. Git, GitHub
Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity'] }

" 4. Find files
" Fuzzy finding program.
" Most frequently used commands:
" Files [PATH] (similar to :FZF)
" Ag [PATTERN] (ALT-A to select all, ALT-D to deselect all)
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Fuzzy file, butter, mru, tag, etc finder
Plug 'ctrlpvim/ctrlp.vim'

" Quick find in a file.
Plug 'easymotion/vim-easymotion'

" 5. Edit
" Add text-object: s (ds, cs, ys: add a surrounding)
Plug 'tpope/vim-surround'

" Find and repalce
Plug 'brooth/far.vim'

" Displays tags in a window, ordered by scope.
Plug 'majutsushi/tagbar'

" Highlight and navigate through different words in a buffer.
Plug 'lfv89/vim-interestingwords'

" Code complete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" Code format
Plug 'sbdchd/neoformat'

" Static lint
Plug 'w0rp/ale'

" Quick comment: gc
Plug 'tpope/vim-commentary'

" 6. Integration
" A git wrapper
Plug 'tpope/vim-fugitive'

" Shows a git diff in the sign column.
Plug 'airblade/vim-gitgutter'

" A git commit browser
Plug 'junegunn/gv.vim'

" 7. golang
" Adds Go language support for Vim.
" Code completion, Refactor, Jump, Formatter, Auto import
" Plug 'fatih/vim-go', { 'do': 'GoUpdateBinaries' }

" 8. python
Plug 'python-mode/python-mode'

" z. Others
" Plug 'kovisoft/paredit', { 'for': ['clojure', 'scheme'] }
" Plug 'junegunn/vader.vim', { 'on': 'Vader', 'for': 'vader' }
" Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
" autocmd! User goyo.vim echom 'Goyo is now loaded!'
" Plug 'Shougo/vimproc.vim', { 'do': 'make' }
" Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }
" Plug 'lervag/vimtex'
" Plug 'junegunn/vim-easy-align'
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
" Plug 'fatih/vim-go', { 'tag': '*' }
" Plug 'tpope/vim-sensible'
" Plug 'Shougo/vimproc.vim', { 'do': 'make' }
" Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

" Initialize plugin system. 
" Automatically executes 'filetype plugin indent on' and 'syntax enable'.
call plug#end()

" filetype plugin indent on   " ... and enable filetype detection
" syntax enable

" ===========================================================================
"                       2. General settings                                  
" ===========================================================================

set nobackup            " Stop annoying backup file.
set writebackup         " Backup file, and delete it after save sucessfully.
set swapfile            " Store the changes you've made to the buffer.
set directory^=$HOME/.vim/tmp/swap//    " Aggregate all swap files in one place.
set autoread            " Automatically read changed files.
                        " After back to buffer, you should :e .
set autowrite           " Automatically save before :next, :make etc.
set hidden              " Buffer should still exist if window is closed.

set encoding=utf-8      " Character encoding used inside Vim.
set fileencodings=ucs-bom,utf-8,gb18030,default,latin1
                        " A list of character encodings is used to set the 
                        " fileencoding value by Vim when read a new file.
set textwidth=0         " Set textwidth by hand.
set fileformats=unix,dos    " unix, osx: LF; dos: CR LF; ox 9-: CR.
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
set smarttab        " Inserts blanks according to other places.

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

" Toggle paste mode.
" nnoremap 

" Jump to next error with CTRL-n and previous error with CTRL-p
" Close the quickfix window with CTRL-q
" map <C-n> :cnext<CR>
" map <C-p> :cprevious<CR>
" nnoremap <C-q> :cclose<CR>

" These will go to the next found characters and center it
" nnoremap n nzzzv
" nnoremap N Nzzzv

" Configurate vim-plug
let g:plug_window = "vertical topleft new"

" NERDTree
" Configurate NERDTree
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

let NERDTreeShowHidden=1
" let NERDTreeIgnore = [
            " \ '\.git$', '\.hg$', '\.svn$', '\.stversions$', '\.pyc$',
            " \ '\.pyo$', '\.svn$', '\.swp$', '\.DS_Store$', '\.sass-cache$',
            " \ '\__pycache__$', '\.egg-info$', '\.ropeproject$',
            "\ ]

" Configurate vim-github-dashboard
nnoremap <leader>d :GHDashboard
nnoremap <leader>a :GHActivity

" Basic options for ctrlp
" Ref: https://www.github.com/ctrlpvim/ctrlp.vim
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'r'

" vim-easymotion
nmap ff <Plug>(easymotion-s2)

" tag-bar
nnoremap <leader>o :TagbarToggle<CR>

" fzf.vim
nnoremap <leader>f :Files .<CR>

" deoplete.vim
let g:deoplete#enable_at_startup = 1

" Set update time is 100ms.
set updatetime=100

" ===========================================================================
"                           4. Vim scripts                                   
" ===========================================================================

" Sudo to write
cnoremap w!! w !sudo tee % >/dev/null

" JSON formatter
com! FormatJSON %!python3 -m json.tool

" Auto insert file head data.
func SetTitle()
    if &filetype == 'python'
        call setline(1, "\#!/usr/bin/env python")
        call setline(2, "\# _*_ conding:utf-8 _*_")
        normal G
        normal o
        normal o
        call setline(5, "if __name__ == '__main__':")
        call setline(6, "   pass")
    endif
endfunc
