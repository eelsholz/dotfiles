call plug#begin('~/.vim/plugged')
Plug 'christoomey/vim-tmux-runner'
Plug 'itchyny/lightline.vim'
Plug 'jeffkreeftmeijer/vim-dim' | runtime plugged/vim-dim/colors/dim.vim
Plug 'mustache/vim-mustache-handlebars'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
call plug#end()

set backupdir=~/.vimfiles " backup files
set directory=~/.vimfiles " swap files
set undodir=~/.vimfiles   " undo files

syntax on

set shiftwidth=2

let mapleader="\<Space>"

" highlight search
set hlsearch
" clear search highlighting with space-space
noremap <leader><leader> :noh<cr>:<Backspace>

" cursor
let &t_EI .= "\e[1 q" " normal mode blinking block
let &t_SI .= "\e[5 q" " insert mode blinking line
let &t_SR .= "\e[3 q" " replace mode blinking underline
noremap <expr> j v:count ? 'j' : 'gj'
noremap <expr> k v:count ? 'k' : 'gk'

" vim-tmux-runner
let g:VtrClearBeforeSend = 0 " do not clear runner before sending command
noremap <leader>h :VtrKillRunner<cr>
noremap <leader>j :VtrSendLinesToRunner<cr>
noremap <leader>k :VtrSendCommandToRunner<cr>
noremap <leader>l :VtrOpenRunner {'orientation': 'h', 'percentage': 50}<cr>
noremap <leader>i :VtrFlushCommand<cr>

" lightline statusline
" Don't show -- INSERT --
set noshowmode
" Update statusline for COMMAND mode
" https://vi.stackexchange.com/questions/30816/macvim-mode-does-not-return-c-for-command-mode-when-pressing#answer-30817
augroup test | au!
  autocmd CmdlineEnter : redrawstatus
augroup end

" some overrides to the vim-dim colors
source ~/.vimrc.colors
