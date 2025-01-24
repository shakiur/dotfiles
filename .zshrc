# Reload changes - omz reload

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git tmux)

source $ZSH/oh-my-zsh.sh

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias cw="dev cd clockwork_web"
alias cf="dev cd clockface"
alias sage="dev cd crimsonsage-product"
alias df="dev cd dotfiles"
alias gems="cd /Users/shakiurrahman/.asdf/installs/ruby/3.1.4/lib/ruby/gems/3.1.0/gems"

eval "$(fzf --zsh)"

source /opt/dev/dev.sh
. /opt/homebrew/opt/asdf/libexec/asdf.sh
source "${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc"
source /opt/secrets/current/dev_env_exports.sh

