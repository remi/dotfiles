-- Enable faster Lua module loading
vim.loader.enable()

require("opt")
require("filetype")
require("keymap")
require("autocmd")
require("statusline").setup()

-- Install plugins using vim.pack
vim.pack.add({
  { src = "https://github.com/catppuccin/nvim" },
  { src = "https://github.com/nvim-telescope/telescope.nvim" },
  { src = "https://github.com/nvim-lua/plenary.nvim" },
  { src = "https://github.com/mileszs/ack.vim" },
  { src = "https://github.com/gbprod/yanky.nvim" },
  { src = "https://github.com/stevearc/oil.nvim" },
  { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
  { src = "https://github.com/stevearc/conform.nvim" },
  { src = "https://github.com/mfussenegger/nvim-lint" },
  { src = "https://github.com/williamboman/mason.nvim" },
  { src = "https://github.com/williamboman/mason-lspconfig.nvim" },
  { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = "https://github.com/lewis6991/gitsigns.nvim" },
  { src = "https://github.com/zbirenbaum/copilot.lua" },
  { src = "https://github.com/vim-scripts/camelcasemotion" },
  { src = "https://github.com/MeanderingProgrammer/render-markdown.nvim" },
  { src = "https://github.com/ervandew/supertab" },
  { src = "https://github.com/jszakmeister/vim-togglecursor" },
  { src = "https://github.com/echasnovski/mini.nvim" },
})

-- Load plugins (vim.pack installs to opt/, so we need to load them explicitly)
for _, plugin in ipairs({
  "nvim", "plenary.nvim", "telescope.nvim", "ack.vim", "yanky.nvim",
  "oil.nvim", "nvim-treesitter", "mason.nvim", "mason-lspconfig.nvim",
  "nvim-lspconfig", "gitsigns.nvim", "copilot.lua", "camelcasemotion",
  "render-markdown.nvim", "supertab", "vim-togglecursor", "mini.nvim"
}) do
  vim.cmd.packadd(plugin)
end

-- Configure plugins
require("plugins.catppuccin")
require("plugins.telescope")
require("plugins.ack")
require("plugins.yanky")
require("plugins.oil")
require("plugins.nvim-treesitter")
require("plugins.lsp")
require("plugins.gitsigns")
require("plugins.copilot")
require("plugins.camelcasemotion")
require("plugins.render-markdown")
require("plugins.mini")

-- Lazy-load formatters and linters on first buffer read
local formatting_setup = false
local linting_setup = false

vim.api.nvim_create_autocmd({ "BufReadPre", "BufNewFile" }, {
  once = true,
  callback = function()
    if not formatting_setup then
      vim.cmd.packadd("conform.nvim")
      require("plugins.formatting")
      formatting_setup = true
    end
    if not linting_setup then
      vim.cmd.packadd("nvim-lint")
      require("plugins.linting")
      linting_setup = true
    end
  end,
})
