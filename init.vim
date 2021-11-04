set mouse=a
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set smartindent
set expandtab
set termguicolors


call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}

call plug#end()


colorscheme gruvbox


nnoremap <leader>b <cmd>CHADopen<cr>
