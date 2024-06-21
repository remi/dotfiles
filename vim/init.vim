set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

lua <<EOF
require("oil").setup({
  buf_options = {
    buflisted = true,
    bufhidden = "hide",
  },
  columns = {
    "icon",
  },
})

require("CopilotChat").setup({
  window = {
    title = "Copilot Chat",
    layout = 'float',
    relative = 'cursor',
    width = 1,
    height = 0.4,
    row = 1
  },
})

require('telescope').setup({
  defaults = {
    prompt_prefix = '→ ',
  },
})
EOF
