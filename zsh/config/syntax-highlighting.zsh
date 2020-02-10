# Syntax highlighting
# --------------------------------------
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
ZSH_HIGHLIGHT_PATTERNS+=('rm -fr *' 'fg=white,bold,bg=red,bold')
ZSH_HIGHLIGHT_PATTERNS+=('rm -rf *' 'fg=white,bold,bg=red,bold')
ZSH_HIGHLIGHT_PATTERNS+=('git push -f *' 'fg=white,bold,bg=red,bold')
ZSH_HIGHLIGHT_PATTERNS+=('git push --force *' 'fg=white,bold,bg=red,bold')
ZSH_HIGHLIGHT_PATTERNS+=('git ci -m *' 'fg=white,bold,bg=red,bold')
ZSH_HIGHLIGHT_PATTERNS+=('git ic -m *' 'fg=white,bold,bg=red,bold')
ZSH_HIGHLIGHT_PATTERNS+=('git pf *' 'fg=white,bold,bg=red,bold')
ZSH_HIGHLIGHT_PATTERNS+=('git co .' 'fg=white,bold,bg=red,bold')
ZSH_HIGHLIGHT_PATTERNS+=('git co *' 'fg=white,bold,bg=blue,bold')
