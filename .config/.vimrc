" A delightful and minimal vim config. file for the full-stack dev.
" @author Lyu Shulun core.dev.lyu@icloud.com


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1. Manage the vim plugins using vim-plug.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
set nobackup
set noswapfile

syntax enable
set ruler
set nonumber
set fileencodings=ucs-bom,utf-8,gb2312,gbk,gb18030,default,latin1




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 2. Remap the keystroke and config the plugins.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","

nnoremap <leader>w :w<CR>
nnoremap <leader>q :wq<CR>
inoremap <leader>w <ESC>:w<CR>
inoremap <leader>q <ESC>:wq<CR>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 3. Finish some useful features using Vim Script.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
