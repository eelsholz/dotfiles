call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'jeffkreeftmeijer/vim-dim' | runtime plugged/vim-dim/colors/dim.vim
Plug 'tpope/vim-surround'
Plug 'mustache/vim-mustache-handlebars'
Plug 'christoomey/vim-tmux-runner'
call plug#end()

set backupdir=~/.vimfiles " backup files
set directory=~/.vimfiles " swap files
set undodir=~/.vimfiles   " undo files

syntax on

set hlsearch
set shiftwidth=2

" https://unix.stackexchange.com/questions/224771/what-is-the-format-of-the-default-statusline
set statusline=\ %F\ %h%w%m%r%=%l,%-3(%c%)\ %P\ 

" cursor
let &t_EI .= "\e[1 q" " normal mode blinking block
let &t_SI .= "\e[5 q" " insert mode blinking line
let &t_SR .= "\e[3 q" " replace mode blinking underline
noremap <expr> j v:count ? 'j' : 'gj'
noremap <expr> k v:count ? 'k' : 'gk'

let mapleader="\<Space>"
" vim-tmux-runner
let g:VtrClearBeforeSend = 0 " do not clear runner before sending command
noremap <leader>l :VtrOpenRunner {'orientation': 'h', 'percentage': 50}<cr>
noremap <leader>j :VtrSendLinesToRunner<cr>
noremap <leader>k :VtrSendCommandToRunner<cr>
noremap <leader>i :VtrFlushCommand<cr>
noremap <leader>h :VtrKillRunner<cr>

" some overrides to the vim-dim colors
source ~/.vimrc.colors
