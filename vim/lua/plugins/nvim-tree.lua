return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  init = function()
    vim.keymap.set('n', '<Leader>l', ':NvimTreeToggle<CR>', { silent = true })
  end,
  opts = {
    on_attach = function(bufnr)
      local api = require("nvim-tree.api")
      api.config.mappings.default_on_attach(bufnr)
      vim.keymap.set('n', '<Right>', api.tree.change_root_to_node, { desc = "nvim-tree: Right", buffer = bufnr, noremap = true, silent = true, nowait = true })
      vim.keymap.set('n', '<Up>', api.tree.change_root_to_parent, { desc = "nvim-tree: Up", buffer = bufnr, noremap = true, silent = true, nowait = true })
    end,
    sync_root_with_cwd = true,
    filters = {
      git_ignored = false,
      dotfiles = false,
    },
  }
}
