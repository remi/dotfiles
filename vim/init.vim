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
EOF

lua << EOF
require("CopilotChat").setup {
  window = {
    layout = "vertical",
    title = "Copilot Chat",
  },
}
EOF
