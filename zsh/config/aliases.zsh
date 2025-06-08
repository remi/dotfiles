# Local aliases
# --------------------------------------
alias ls="eza --long --time-style=long-iso --group-directories-first --header --links"
alias ll="ls -la"
alias l="ls -l"
alias rm="rm -i"
alias p="ps -ef | rg -i "
alias ..="cd .."
alias ~="cd ~"
alias tree="eza -T"
alias cat="bat"
alias ssh="TERM=${TERM/tmux/xterm} ssh"
alias dog="doggo"

# 1Password
export OP_PLUGIN_ALIASES_SOURCED=1
alias gh="op plugin run -- gh"
alias aws="op plugin run -- aws"

# Editor (always forward to Cursor!)
alias vi="cursor"
alias vim="cursor"
alias nvim="cursor"

# Ripgrep
alias ag="rg"
alias ack="rg"

# Ruby
alias b="bundle"
alias be="bundle exec"

# Tmux
alias tmux="TMPDIR=$HOME/.tmux tmux"
alias t="teamocil"

# Kubernetes
alias k="kubectl"
alias kc="kubectx"
alias kn="kubens"

# Daemons
alias pg-daemon-12="$HOME/.asdf/installs/postgres/12.10/bin/pg_ctl -D $HOME/.asdf/installs/postgres/12.10/data -l $HOME/.asdf/installs/postgres/12.10/server.log start"
alias pg-daemon-15="$HOME/.asdf/installs/postgres/15.13/bin/pg_ctl -D $HOME/.asdf/installs/postgres/15.13/data -l $HOME/.asdf/installs/postgres/15.13/server.log start"