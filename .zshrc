# Path to your oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

# just remind me to update when it's time
zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 7

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git brew)

# zsh-autosuggestions
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

# zsh-syntax-highlighting
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source $ZSH/oh-my-zsh.sh

# key bindings
bindkey "^S" fzf-cd-widget

# Alias
alias vi="nvim"
alias ll="eza -l --icons"

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --zsh)"

# use starship theme (needs to be at the end)
eval "$(starship init zsh)"

# add direnv hook
eval "$(direnv hook zsh)"

