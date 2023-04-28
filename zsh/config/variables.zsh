# Global variables
# --------------------------------------
export PATH="$HOME/.zsh/bin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:$HOME/Library/Python/2.7/bin"
export PATH="$PATH:$HOME/.dotnet"
export PATH="$PATH:$HOME/.dotnet/tools"
export PATH="$PATH:$HOME/.radicle/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$HOME/Dropbox/Bin:$PATH"
export PATH="./node_modules/.bin:$PATH"
export PATH="./bin:$PATH"

# User config directory
export XDG_CONFIG_HOME="$HOME/.config"

# Terminal config
export WORDCHARS='*?_[]~=&;!#$%^(){}'
export TERM="xterm-256color"

# Timezone
export TZ="America/Montreal"

# History limits
export HISTFILE=$HOME/.zhistory
export HISTSIZE=1000000
export SAVEHIST=1000000

# Utilities
export PAGER='less'
export DELTA_PAGER='less -R'
export EDITOR='nvim'
export GIT_EDITOR='nvim'
export BROWSER='open'
export LESS="-+e -+f -R -+c -X -M -S -r"

# Locales
export LANG="en_US.UTF-8"
export LC_ALL=$LANG

# Erlang
export ERL_AFLAGS="-kernel shell_history enabled"

# Ripgrep
export RIPGREP_CONFIG_PATH=$HOME/.ripgreprc

# Go
export GOPATH="/usr/local/share/go"
export PATH="$PATH:$GOPATH/bin"
