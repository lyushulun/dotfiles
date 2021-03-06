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

" Display vertical lines at each indentation level for code intended with spaces
Plug 'yggdroot/indentline'

" 2. Find files
" Useful fuzzy finder.
Plug '/usr/local/opt/fzf'   " You need install fzf externally
Plug 'junegunn/fzf.vim'

" Change the working directory to the project root
Plug 'airblade/vim-rooter'

" 3. File explorer and outline
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'majutsushi/tagbar'

" 4. Edit efficiently
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'lfv89/vim-interestingwords'
Plug 'tpope/vim-commentary'

" 5. Git associated
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity'] }

" 6. JS dev
" 7. Python dev
" 8. Go dev
" 9. PHP dev

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

" 如果打开文件, 遇到乱码, 就需要手动设置编码
" 不要使用 fileencoding 设置, 因为其仅用于设置保存文件时候, 使用的编码
" 应当使用 :e ++enc=someencoding somefile 指定编码格式重新打开文件
"
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
set expandtab       " Use spaces to insert one <TAB> instead of <TAB> character

set backspace=indent,eol,start
                    " Make the backspace more powerful


" ============================================================================
"                           3. Custom mapping
" ============================================================================

let mapleader=","

" Save and Save&Quit quickly
nnoremap <leader>w :w<CR>
nnoremap <leader>q :wq<CR>
inoremap <leader>w <ESC>:w<CR>
inoremap <leader>q <ESC>:wq<CR>

" Jump qickly among windows
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

" Plugin mappings
" 2. Find files
" airblade/vim-rooter
" Which buffers trigger Rooter: everything (default)
let g:rooter_targets = '/,*'

" How to identify a root directory
let g:rooter_patterns = ['.git', 'Makefile', '*.sln', 'build/env.sh']

" Non-project files: don't change directory (default)
let g:rooter_change_directory_for_non_project_files = ''

" Running manually: make Rooter start in manual mode
let g:rooter_manual_only = 1


" 3. File explorer and outlines
nnoremap <leader>e :Files<CR>
" 4. Edit efficiently
" 5. Git associated
" 6. JS dev
" 7. Python dev
" 8. Go dev
" 9. PHP dev

nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

nmap ff <Plug>(easymotion-s2)

nnoremap <leader>o :TagbarToggle<CR>

" ============================================================================
"                           4. Scripts
" ============================================================================
