return {
  "vim-scripts/camelcasemotion",
  init = function()
    local camel_maps = { "w", "b", "e" }
    for _, key in ipairs(camel_maps) do
      vim.keymap.set("", key, "<Plug>CamelCaseMotion_" .. key, { silent = true })
      vim.keymap.set("o", key, "<Plug>CamelCaseMotion_" .. key, { silent = true })
    end

    vim.keymap.del("s", "w")
    vim.keymap.del("s", "b")
    vim.keymap.del("s", "e")

    local camel_objects = { "iw", "ib", "ie" }
    for _, motion in ipairs(camel_objects) do
      vim.keymap.set("o", motion, "<Plug>CamelCaseMotion_" .. motion, { silent = true })
      vim.keymap.set("x", motion, "<Plug>CamelCaseMotion_" .. motion, { silent = true })
    end

    vim.keymap.set("n", "<Leader>!d", ":bdelete!<CR>", opts)
    vim.keymap.set("n", "<Leader>d", ":bdelete<CR>", opts)
    vim.keymap.set("n", "<Leader>D", ":bufdo bdelete!<CR>", opts)
    vim.keymap.set("n", "<Leader>w", ":w!<CR>", opts)
  end,
}
