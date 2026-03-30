require("oil").setup({
  buf_options = {
    buflisted = true,
    bufhidden = "hide",
  },
  columns = {
    "icon",
  },
})

vim.keymap.set("n", "-", vim.cmd.Oil, { desc = "Open file explorer" })
