" This is in addition to sensible.vim (https://github.com/tpope/vim-sensible)

set backupdir=~/.vimfiles " backup files
set directory=~/.vimfiles " swap files
set undodir=~/.vimfiles   " undo files

set hlsearch
set shiftwidth=2

hi StatusLine ctermbg=yellow ctermfg=black 
hi StatusLineNC ctermbg=none ctermfg=black
hi TabLineSel ctermbg=none ctermfg=none
hi TabLine ctermbg=none ctermfg=black
hi TabLineFill cterm=none
hi VertSplit ctermbg=none ctermfg=black

" cursor
let &t_EI .= "\e[1 q" " normal mode blinking block
let &t_SI .= "\e[5 q" " insert mode blinking line
let &t_SR .= "\e[3 q" " replace mode blinking underline
