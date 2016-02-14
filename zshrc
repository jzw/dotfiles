. ~/.aliases
. ~/.exports
. ~/.prompt
unsetopt nomatch

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# Customize to your needs...

# vi command line editing
bindkey -v

# other key bindings
bindkey '^R' history-incremental-search-backward

PATH=~/bin:$PATH

PATH=$HOME/local/bin:$PATH


### Added by the Heroku Toolbelt
export PATH=/usr/local/heroku/bin:$PATH
export RAKEOPT="--trace --verbose"
eval "$(rbenv init -)"

