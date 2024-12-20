ZSH_THEME="agnoster-fork"

plugins=(\
  git \
  vi-mode \
  # git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  zsh-syntax-highlighting \
)

typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[alias]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[command]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=green'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=green'
ZSH_HIGHLIGHT_STYLES[path]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=white'

# aliases
alias c='clear'
alias p='python3'

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# path
export PATH="$HOME/.bin:$PATH"

# f navigation commands
f () {
  if [ "$1" = "" ]; then
    ls -lah --color
    return
  fi
  if [ -d "$1" ]; then
    cd "$1"
    return
  fi
  if [ -f "$1" ]; then
    nvim "$1"
    return
  fi
}

ff () {
  cd ..
}

fff () {
  cd ~
}

ffff () {
  cd /
}

# start oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

unsetopt share_history
