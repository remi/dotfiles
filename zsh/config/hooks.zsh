# Hooks
# --------------------------------------
precmd() { print -Pn "\e]0;%m\a" }
preexec() { print -Pn "\e]0;%m\a" }
