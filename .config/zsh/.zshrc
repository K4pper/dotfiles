autoload -Uz compinit
compinit

fpath+=($HOME/.config/zsh/pure)

autoload -U promptinit; promptinit
prompt pure

# Alias
alias vim="nvim"
alias lg="lazygit"
alias ls="eza"

# Path
export PATH=/opt/homebrew/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin

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


# Plugins
source "$HOME/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$HOME/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
