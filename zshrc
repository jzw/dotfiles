unsetopt nomatch

. ~/.aliases
. ~/.exports
. ~/.prompt

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
. ~/Dropbox/code/zaw/zaw.zsh
bindkey '^R' zaw-history

# zsh syntax highlighting
. ~/Dropbox/code/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
