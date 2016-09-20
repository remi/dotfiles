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
alias h="heroku"
alias ack="ag"
alias ..='cd ..'
alias ~='cd ~'

# Editor (always forward to Neovim!)
alias vi='nvim'
alias vim='nvim'

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
alias redis-daemon="redis-server `brew --prefix`/etc/redis.conf"
alias elasticsearch-daemon="elasticsearch -d es.config=`brew --prefix elasticsearch`/config/elasticsearch.yml"
alias pg-daemon="pg_ctl -D `brew --prefix`/var/postgres -l `brew --prefix`/var/postgres/server.log start"
alias php-daemon="`brew --prefix php56`/sbin/php-fpm --fpm-config `brew --prefix`/etc/php/5.6/php-fpm.conf"

# Global aliases
# --------------------------------------
alias -g L="| less"
alias -g SORT='| sort'
alias -g LC='| wc -l'
alias -g A='| ack -i'
alias -g AA='| ack'
alias -g BG='> /dev/null 2>&1 &'
