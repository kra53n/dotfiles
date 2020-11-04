set number
set expandtab
set tabstop=4
syntax on
set hlsearch
set incsearch
set backspace=indent,eol,start
set ruler
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0


set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }


" bottom iformatio
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"colorchemes
Plugin 'sainnhe/sonokai'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"mappings
map <C-b> :NERDTreeToggle<CR>


" colorcheme
colorscheme sonokai


" other things which I don`t understand
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 10
let g:Powerline_symbols = 'unicode'

let g:airline_powerline_fonts=1
let g:gruvbox_contrast_dark="meduim"

if !exists('g:airline_symbols')
    let g:airline_symbols = {} 
endif


" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'


" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


set fillchars+=vert:\$
