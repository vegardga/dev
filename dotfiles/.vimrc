set number
set relativenumber
set tabstop=4
set shiftwidth=4
set autoindent
set mouse=a
set hls
set incsearch
set nocompatible
set clipboard=unnamed
set ignorecase smartcase
set cpoptions+=$
set autochdir

call plug#begin()
Plug 'machakann/vim-highlightedyank'
call plug#end()

nmap Y y$

imap <C-i> <Esc>

"" visual shifting (builtin-repeat)
vnoremap < <gv
vnoremap > >gv
