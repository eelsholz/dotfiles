call plug#begin('~/.vim/plug')
Plug 'tpope/vim-sensible'
Plug 'jeffkreeftmeijer/vim-dim' " after :PlugInstall, rename /vim-dim/colors/ to /vim-dim/plugin/
call plug#end()

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
