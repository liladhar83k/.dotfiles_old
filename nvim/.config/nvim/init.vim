syntax on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set numberwidth=4
set relativenumber
set signcolumn=number
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch

" --- plugins

call plug#begin('~/.config/nvim/plugged')

" define your plugins
Plug 'sainnhe/gruvbox-material'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

set background=dark
set termguicolors
colorscheme gruvbox-material
