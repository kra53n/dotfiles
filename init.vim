set number
set tabstop=4
set shiftwidth=4
set smartindent
set expandtab


call plug#begin()

Plug 'arcticicestudio/nord-vim'
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}

call plug#end()


colorscheme nord


nnoremap <leader>b <cmd>CHADopen<cr>
