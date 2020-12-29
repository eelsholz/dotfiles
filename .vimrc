" This is in addition to sensible.vim (https://github.com/tpope/vim-sensible)
" and Dim (https://github.com/jeffkreeftmeijer/vim-dim)

syntax on

set backupdir=~/.vimfiles " backup files
set directory=~/.vimfiles " swap files
set undodir=~/.vimfiles   " undo files

set hlsearch
set shiftwidth=2

" cursor
let &t_EI .= "\e[1 q" " normal mode blinking block
let &t_SI .= "\e[5 q" " insert mode blinking line
let &t_SR .= "\e[3 q" " replace mode blinking underline
