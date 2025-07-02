# If this is set, zsh sessions will append their history list to the history
# file, rather than overwrite it.
setopt append_history

# This option both imports new commands from the history file, and also causes
# your typed commands to be appended to the history file
setopt share_history

# Do not enter command lines into the history list if they are duplicates of
# the previous event.
setopt hist_ignore_dups

# Remove older duplicate entries from history first when trimming history.
setopt hist_expire_dups_first

# Remove blanks from each command line being added to history.
setopt hist_reduce_blanks

# If set, parameter expansion, command substitution and arithmetic expansion is
# performed in prompts.
setopt prompt_subst

# Print the exit value of programs with non-zero exit status.
setopt print_exit_value

# On an ambiguous completion, automatically list choices on an ambiguous completion.
setopt auto_menu

# If a command is not in the hash table, and there exists an executable
# directory by that name, perform the cd command to that directory.
setopt auto_cd

# Don't push multiple copies of the same directory onto the directory stack.
setopt pushd_ignore_dups
