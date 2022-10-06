# Auto-completion configuration
# --------------------------------------
fpath=(/usr/local/share/zsh-completions $fpath)
autoload -U compinit
compinit

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion::complete:*' use-cache on
zstyle ':completion::complete:*' cache-path ~/.zsh/cache/$HOST
zstyle ':completion:*:warnings' format '%BSorry, no results for: %d%b'
zstyle ':completion:*' menu select=2
zstyle ':completion:*' verbose yes
zstyle ':completion:*' group-name ''
zstyle ':completion:*:manuals' separate-sections true
zstyle ':completion:*:manuals.(^1*)' insert-sections true

zstyle ':completion:*::::' completer _expand _complete _ignored _approximate
zstyle ':completion:*:approximate:*' max-errors 1 numeric

zmodload -i zsh/complist
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

source <(kubectl completion zsh)
