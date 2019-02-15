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

PATH=/usr/local/bin:~/bin:$HOME/local/bin:$PATH

### Added by the Heroku Toolbelt
export PATH=/usr/local/heroku/bin:$PATH
export RAKEOPT="--trace --verbose"
eval "$(rbenv init -)"

# zaw history
. ~/Dropbox/code/zaw/zaw.zsh
bindkey '^R' zaw-history
zstyle ':filter-select' hist-find-no-dups yes
zstyle ':filter-select:highlight' matched fg=green,standout
zstyle ':filter-select' max-lines 15

# zsh syntax highlighting
. ~/Dropbox/code/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

. ~/.aliases
. ~/.exports
. ~/.prompt

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
