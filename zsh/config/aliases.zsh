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
alias pr='open-pr'
alias tree='exa -T'

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
alias redis-daemon="redis-server /usr/local/etc/redis.conf"
alias elasticsearch-daemon="elasticsearch -d"
alias pg-daemon-10="$HOME/.asdf/installs/postgres/10.10/bin/pg_ctl -D $HOME/.asdf/installs/postgres/10.10/data -l /usr/local/var/postgres-10.10/server.log start"
alias pg-daemon-11="$HOME/.asdf/installs/postgres/11.5/bin/pg_ctl -D $HOME/.asdf/installs/postgres/11.5/data -l /usr/local/var/postgres-11.5/server.log start"
