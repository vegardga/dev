set number
set relativenumber
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set mouse=a
set hls
set incsearch
set nocompatible
set clipboard=unnamed
set ignorecase smartcase
set cpoptions+=$
set autochdir

if has('nvim')
	" nvim plugins
else
	call plug#begin()
	Plug 'machakann/vim-highlightedyank'
	call plug#end()
endif

nmap Y y$

inoremap <C-i> <Esc>

"" visual shifting (builtin-repeat)
vnoremap < <gv
vnoremap > >gv
