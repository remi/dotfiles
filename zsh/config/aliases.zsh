# Local aliases
# --------------------------------------
alias ls="ls -hFG --color=always --group-directories-first"
alias ll='ls -la'
alias la='ls -A'
alias l='ls -l'
alias rm='rm -i'
alias f='find . -iname'
alias p='ps -ef | ack -i '
alias listen="sudo lsof -i -P"
alias flushdns="sudo discoveryutil udnsflushcaches"
alias dnsflush="flushdns"
alias h="heroku"
alias ack="ag"
alias ..='cd ..'
alias ~='cd ~'

# Editor
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias vi='vim'

# Ruby
alias b="bundle"
alias be="bundle exec "
alias rt="RAILS_ENV=test"
alias sk="SKIP_CODE_CHECK=1"

# Tmux
alias tmux="TMPDIR=$HOME/.tmux tmux"
alias t="teamocil"
compctl -g '~/.teamocil/*(:t:r)' teamocil

# Daemons
alias redis-daemon="redis-server /usr/local/etc/redis.conf"
alias elasticsearch-daemon="elasticsearch -d es.config=`brew --prefix elasticsearch`/config/elasticsearch.yml"
alias pg-daemon="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias memcached-daemon="memcached -d -m 64 -p 11211 -u memcache -l 127.0.0.1"

# Global aliases
# --------------------------------------
alias -g L="| less"
alias -g SORT='| sort'
alias -g LC='| wc -l'
alias -g A='| ack -i'
alias -g AA='| ack'
alias -g BG='> /dev/null 2>&1 &'
