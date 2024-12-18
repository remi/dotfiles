-- Restore last cursor position
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

-- Strip trailing whitespace on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    local cursor_pos = vim.api.nvim_win_get_cursor(0)
    vim.cmd([[%s/\s\+$//e]])
    vim.api.nvim_win_set_cursor(0, cursor_pos)
  end,
})

-- QuickFix
vim.api.nvim_create_autocmd("FileType", {
  pattern = "qf",
  callback = function()
    vim.opt_local.scrolloff = 0
    vim.opt_local.cursorline = true
    vim.keymap.set("n", "<CR>", "<CR>", { buffer = true })
  end,
})

-- Git
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "COMMIT_EDITMSG",
  command = "normal! gg",
})
