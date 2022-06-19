set mouse=a
set scrolloff=5

set number
set relativenumber
set colorcolumn=79

set tabstop=4
set shiftwidth=4
set smartindent
set expandtab


nnoremap <leader>b :Sex<cr>
nnoremap <leader>q :wq<cr>
nnoremap ,<space> :nohlsearch<cr>
nnoremap .<space> :call ChangeColorcolumn()<cr>

noremap q <C-Q>
noremap <F2> <C-r>
nnoremap Y VYdd
inoremap <M-p> <C-p>


function ChangeColorcolumn()
    if &colorcolumn <= 79
        set colorcolumn=121
    else
        set colorcolumn=79
    endif
endfunction


echo " >^.^< Welcome, to nvim, bro!)"
