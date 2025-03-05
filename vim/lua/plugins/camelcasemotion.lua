return {
  "vim-scripts/camelcasemotion",
  init = function()
    local opts = { noremap = true, silent = true }
    local camel_maps = { "w", "b", "e" }

    for _, key in ipairs(camel_maps) do
      vim.keymap.set("", key, "<Plug>CamelCaseMotion_" .. key, opts)
      vim.keymap.set("o", key, "<Plug>CamelCaseMotion_" .. key, opts)
      vim.keymap.del("s", key)
    end

    local camel_objects = { "iw", "ib", "ie" }
    for _, motion in ipairs(camel_objects) do
      vim.keymap.set("o", motion, "<Plug>CamelCaseMotion_" .. motion, opts)
      vim.keymap.set("x", motion, "<Plug>CamelCaseMotion_" .. motion, opts)
    end
  end,
}
