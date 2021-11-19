set mouse=a
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set smartindent
set expandtab
set termguicolors
set colorcolumn=79


call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn installl' }

call plug#end()


colorscheme gruvbox


nnoremap jk <esc>
nnoremap <leader>b <cmd>CHADopen<cr>
nnoremap <leader>m <cmd>MarkdownPreview<cr>


autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
