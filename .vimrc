" Plugins

call plug#begin('~/.vim/plugged')

Plug 'iosmanthus/vim-nasm'
Plug 'neovimhaskell/haskell-vim'
Plug 'tpope/vim-fugitive'

call plug#end()

"color pablo

filetype plugin indent on
syntax on
set number
set relativenumber
set tabstop=4
set shiftwidth=4
highlight ColorColumn ctermbg=8 guibg=lightgray
"highlight StatusLine ctermfg=8 guifg=lightgray
"highlight StatusLineNC ctermfg=8 guifg=lightgray
set colorcolumn=80
set nohlsearch
set incsearch
set laststatus=0

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

au BufRead,BufNewFile *.asm,*.inc set filetype=nasm tabstop=8 shiftwidth=8
au BufRead,BufNewFile *.s, set filetype=gas tabstop=8 shiftwidth=8
au BufRead,BufNewFile *.lsp, set filetype=lisp tabstop=4 shiftwidth=4
"au BufRead,BufNewFile *.cmake,CMakeList.txt set filetype=cmake

" Cursor shape change
let &t_SI = "\e[6 q"
let &t_SR = "\e[4 q"
let &t_EI = "\e[2 q"

cabbr sudow w !sudo tee % >/dev/null
