" ============================================================================
" A delightful and minimum vim conf for the full-stack of web dev.
" Copyright (c) 2020 John Shulun Lyu & Contributors. All rights reserved.
" Authors: John Shulun Lyu <john@johnshulunlyu.com>
" Repo.: https://github.com/johnshulunlyu/dotfiles
" LICENSE: GPLv3
" ============================================================================

" ============================================================================
"               1. Manage vim plugins with vim-plug
" ============================================================================

set nocompatible    " Make Vim behave in a more useful way
filetype off        " Reset filetype detection first ...

" vim-plug automatic installation
" Place the following codes in your vimrc before `plug#begin()` call
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" 1. Appearance associated
Plug 'morhetz/gruvbox'

Plug 'mhinz/vim-startify'

Plug 'yggdroot/indentline'

" 2. Find files

Plug 'ctrlpvim/ctrlp.vim'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" 3. File explorer and outline

Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'majutsushi/tagbar'

" 4. Edit efficiently

Plug 'easymotion/vim-easymotion'

Plug 'tpope/vim-surround'

Plug 'lfv89/vim-interestingwords'

Plug 'tpope/vim-commentary'

" 3. Git associated

Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity'] }

" 4. JS dev
" 5. Python dev
" 6. Go dev
" 7. PHP dev

call plug#end()

" ============================================================================
"                          2. General settings
" ============================================================================

set nobackup
set writebackup     " Delete the backup after the file has been
                    " successfully written

set noswapfile      " Don't use swapfiles for buffers

set noundofile      " Don't use undofiles to save undo histories, and use
                    " `git log` to revision instead

set encoding=utf-8  " Character encoding used inside Vim
set fileencodings=ucs-bom,utf-8,gb18030,default,latin1
                    " Character encodings considered when editing an new file

set fileformats=unix,dos
                    " Give the <EOL> of the current buffer, which is used for
                    " reading/writing the buffer from/to a file

set textwidth=0     " Don't set width of text
set ruler           " Show the line and column number of the cursor position 
set nonumber        " Don't show line number
set showcmd         " Show (partial) cmd in the last line of the screen
set laststatus=0    " Never show last status line
set showmode        " If in Insert, Replace or Visual mode, put a msg on the
                    " last line
set foldmethod=manual
                    " Folds are created manually
set splitright      " Put the new window right of the current window
set splitbelow

set incsearch       " While typing a search command, show where the pattern,
                    " as it was typed so far
set hlsearch        " Highlight the search results
set ignorecase      " Ignore case in search patterns
set smartcase       " Override the 'ignorecase' option if the search pattern
                    " contains upper case characters

set autoindent      " Copy indent from current line when starting a new line

set background=dark
colorscheme gruvbox

" Use 4 spaces to insert one <TAB> or indent
set tabstop=4       " Number of spaces that one <TAB> counts for
set shiftwidth=4    " Number of spaces that one indent counts for
set expandtab       " Use spaces to insert one <TAB>


" ============================================================================
"                           3. Custom mapping
" ============================================================================

let mapleader=","

" Save and Save&Quit quickly
nnoremap <leader>w :w<CR>
nnoremap <leader>wq :wq<CR>
inoremap <leader>w <ESC>:w<CR>
inoremap <leader>wq <ESC>:wq<CR>

" Jump qickly among windows
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

nmap ff <Plug>(easymotion-s2)

nnoremap <leader>o :TagbarToggle<CR>

" ============================================================================
"                           4. Scripts
" ============================================================================
