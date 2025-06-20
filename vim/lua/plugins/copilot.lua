return {
  "zbirenbaum/copilot.lua",
  opts = {
    filetypes = {
      gitcommit = true,
    },
    suggestion = {
      enabled = true,
      auto_trigger = true,
      keymap = {
        accept = "<Right>",
        dismiss = "<Left>",
        next = "<Down>",
        prev = "<Up>",
      },
    },
  },
}
