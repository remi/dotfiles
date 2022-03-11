# Local aliases
# --------------------------------------
alias ls="exa --long --time-style=long-iso --git --group-directories-first --header --links"
alias ll='ls -la'
alias l='ls -l'
alias rm='rm -i'
alias p='ps -ef | rg -i '
alias listen="sudo lsof -i -P"
alias h="heroku"
alias ..='cd ..'
alias ~='cd ~'
alias tree='exa -T'
alias cat='bat'
alias ssh="TERM=${TERM/tmux/xterm} ssh"

# Editor (always forward to Neovim!)
alias vi='nvim'
alias vim='nvim'

# Ripgrep
alias ag="rg"
alias ack="rg"

# Ruby
alias b="bundle"
alias be="bundle exec "

# Tmux
alias tmux="TMPDIR=$HOME/.tmux tmux"
alias t="teamocil"
compctl -g '~/.teamocil/*(:t:r)' teamocil

# cURL
alias curl-headers="curl -s -D - -o"

# Kubernetes
alias k="kubectl"
alias kc="kubectx"
alias kn="kubens"

# Daemons
alias pg-daemon-12="$HOME/.asdf/installs/postgres/12.10/bin/pg_ctl -D $HOME/.asdf/installs/postgres/12.10/data -l $HOME/.asdf/installs/postgres/12.10/server.log start"
