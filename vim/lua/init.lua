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
    layout = 'vertical',
  },
})

require('telescope').setup({
  defaults = {
    prompt_prefix = '→ ',
  },
  pickers = {
    find_files = {
      follow = true,
    },
    buffers = {
      sort_lastused = true,
      ignore_current_buffer = true,
    },
  },
})
