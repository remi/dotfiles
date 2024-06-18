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
    layout = "float",
    title = "Copilot Chat",
  },
})

require('telescope').setup({
  defaults = {
    prompt_prefix = '→ ',
  },
})
EOF
