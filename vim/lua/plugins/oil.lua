return {
  "stevearc/oil.nvim",
  opts = {
    buf_options = {
      buflisted = true,
      bufhidden = "hide",
    },
    columns = {
      "icon",
    },
  },
  init = function()
    vim.keymap.set("n", "-", vim.cmd.Oil, { desc = "Open file explorer" })
  end,
}
