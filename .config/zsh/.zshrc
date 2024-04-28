# Basic auto/tab complete
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) # Include hidden files


fpath+=($HOME/.config/zsh/pure)

autoload -U promptinit; promptinit
prompt pure


# Alias
alias vim="nvim"
alias lg="lazygit"
alias ls="eza"

# Path
export PATH=/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/home/kapper/.local/bin

[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# brew Shell Completion
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

# Kubernetes
export KUBECONFIG=./kubeconfig
export PATH="${KREW_ROOT:-$HOME/.config/.krew}/bin:$PATH"
source <(kubectl completion zsh)
alias k="kubectl"

# GO
export PATH=$PATH:/usr/local/go/bin

# Rust
source "$HOME/.config/.cargo/env"

# Editor
export EDITOR=/opt/homebrew/bin/nvim

# JAVA
export JAVA_HOME="/opt/homebrew/Cellar/openjdk/21.0.2"

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# Zoxide
eval "$(zoxide init --cmd cd zsh)"

# NodeJS
export NVM_DIR="$HOME/.config/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm


# Plugins
source "$HOME/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$HOME/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
