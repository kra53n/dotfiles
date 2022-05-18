set mouse=a
set scrolloff=5

set number
set relativenumber
set colorcolumn=121

set tabstop=4
set shiftwidth=4
set smartindent
set expandtab


call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}

Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app && yarn install'}
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ap/vim-css-color'

call plug#end()


colorscheme gruvbox
if (has('termguicolors'))
    set termguicolors
endif


nnoremap <leader>b :CHADopen<cr>
nnoremap <leader>m :MarkdownPreview<cr>

nnoremap <leader>s :call ProcessLatexFile()<cr>
nnoremap <leader>q :wq<cr>
nnoremap <leader>r :!python "%:t"&<cr>
nnoremap ,<space> :nohlsearch<cr>
nnoremap .<space> :call ChangeColorcolumn()<cr>

noremap q <C-Q>
noremap <F2> <C-r>
nnoremap Y VYdd
inoremap <M-p> <C-p>


function ProcessLatexFile()
    :w
    if expand("%:t:e") == "tex"
        :!pdflatex %:t
    endif
endfunction

function ChangeColorcolumn()
    if &colorcolumn <= 79
        set colorcolumn=121
    else
        set colorcolumn=79
    endif
endfunction


echo " >^.^< Welcome, to nvim, bro!)"
