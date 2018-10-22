unsetopt nomatch

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# Customize to your needs...

# vi command line editing
bindkey -v

bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

PATH=~/bin:$PATH

PATH=$HOME/local/bin:$PATH

### Added by the Heroku Toolbelt
export PATH=/usr/local/heroku/bin:$PATH
export RAKEOPT="--trace --verbose"
eval "$(rbenv init -)"

# zaw history
#. ~/Dropbox/code/zaw/zaw.zsh
#bindkey '^R' zaw-history
#zstyle ':filter-select' max-lines 8

# zsh syntax highlighting
. ~/Dropbox/code/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

. ~/.aliases
. ~/.exports
#. ~/.prompt

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$HOME/.bin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

#source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
autoload -U promptinit; promptinit
prompt pure
