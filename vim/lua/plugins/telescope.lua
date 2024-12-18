return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    defaults = {
      prompt_prefix = "→ ",
      layout_strategy = "bottom_pane",
      layout_config = { height = 25, prompt_position = "bottom" },
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
  },
  init = function()
    local telescope_builtin = require("telescope.builtin")
    local telescope = require("telescope")

    telescope.load_extension("yank_history")

    vim.keymap.set("n", "<leader>t", telescope_builtin.find_files)
    vim.keymap.set("n", "<leader>T", function()
      telescope_builtin.find_files({ hidden = true })
    end)
    vim.keymap.set("n", "<leader>o", function()
      telescope_builtin.find_files({ cwd = vim.fn.expand("%:p:h") })
    end)
    vim.keymap.set("n", "<leader>,", telescope_builtin.buffers)
    vim.keymap.set("n", "<leader>m", telescope_builtin.oldfiles)
    vim.keymap.set("n", "<leader>g", telescope_builtin.live_grep)
    vim.keymap.set("n", "<leader>y", function()
      telescope.extensions.yank_history.yank_history()
    end)
  end,
}
