call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'jeffkreeftmeijer/vim-dim' | runtime plugged/vim-dim/colors/dim.vim
Plug 'tpope/vim-surround'
Plug 'mustache/vim-mustache-handlebars'
call plug#end()

set backupdir=~/.vimfiles " backup files
set directory=~/.vimfiles " swap files
set undodir=~/.vimfiles   " undo files

syntax on

set hlsearch
set shiftwidth=2

" cursor
let &t_EI .= "\e[1 q" " normal mode blinking block
let &t_SI .= "\e[5 q" " insert mode blinking line
let &t_SR .= "\e[3 q" " replace mode blinking underline
noremap <expr> j v:count ? 'j' : 'gj'
noremap <expr> k v:count ? 'k' : 'gk'

" some overrides to the vim-dim colors
autocmd ColorScheme * source ~/.vimrc.colors
