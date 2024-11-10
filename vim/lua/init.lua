vim.opt.showcmd = true
vim.opt.showmode = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.mouse = 'n'
vim.opt.number = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.whichwrap:append('h,l,~,[,],<,>')
vim.opt.scrolloff = 4
vim.opt.laststatus = 3
vim.opt.autoread = false
vim.opt.title = true
vim.opt.showmatch = true
vim.opt.autoindent = false
vim.opt.smartindent = false
vim.opt.cindent = true
vim.opt.showtabline = 0
vim.opt.hlsearch = true
vim.opt.visualbell = false
vim.opt.modelines = 10
vim.opt.eol = false
vim.opt.wildmenu = true
vim.opt.wildmode = 'full'
vim.opt.switchbuf = 'useopen'
vim.opt.backspace = 'indent,eol,start'
vim.opt.tabpagemax = 50
vim.opt.iskeyword:append('-,?,!')
vim.opt.hidden = true
vim.opt.gdefault = true
vim.opt.shell = 'zsh'
vim.opt.clipboard = 'unnamed'
vim.opt.startofline = false
vim.opt.lazyredraw = true
vim.opt.inccommand = 'nosplit'

vim.opt.wrap = false
vim.opt.sidescroll = 4
vim.opt.sidescrolloff = 14
vim.opt.listchars = 'precedes:←,extends:→,nbsp:◊,trail:⠿,eol: ,tab:●·'
vim.opt.list = true

vim.filetype.add({
  pattern = {
    ['Procfile'] = 'yaml',
    ['.env'] = 'sh',
    ['.env.*'] = 'sh',
    ['%.jsonschema$'] = 'json',
    ['%.plist$'] = 'xml',
  },
})

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = ","
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    'catppuccin/nvim',
    {
      'nvim-telescope/telescope.nvim',
      dependencies = {
        'nvim-lua/plenary.nvim',
      },
    },
    'fvictorio/vim-extract-variable',
    'ervandew/supertab',
    'jiangmiao/auto-pairs',
    'jszakmeister/vim-togglecursor',
    'mileszs/ack.vim',
    'tpope/vim-commentary',
    'tpope/vim-surround',
    'vim-scripts/YankRing.vim',
    'vim-scripts/camelcasemotion',
    'stevearc/oil.nvim',
    'lewis6991/gitsigns.nvim',
    {
      "yetone/avante.nvim",
      event = "VeryLazy",
      lazy = false,
      version = false,
      build = "make",
      dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "stevearc/dressing.nvim",
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "zbirenbaum/copilot.lua",
      },
    },
    'MeanderingProgrammer/render-markdown.nvim',
    'nvim-tree/nvim-web-devicons',
    'nvim-tree/nvim-tree.lua',
  },
  checker = { enabled = true },
})

require("oil").setup({
  buf_options = {
    buflisted = true,
    bufhidden = "hide",
  },
  columns = {
    "icon",
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

require('copilot').setup({
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
})

require('nvim-treesitter.configs').setup({
  ensure_installed = { "markdown", "markdown_inline", "query", "elixir", "typescript", "ruby" },
  auto_install = true,
  highlight = {
    enable = true,
  }
})

require('render-markdown').setup({
  file_types = { 'markdown', 'Avante' }
})

require('avante').setup({
  provider = "claude",
  auto_suggestions_provider = "copilot",
  hints = { enabled = false },
  windows = {
    width = 40,
    sidebar_header = {
      align = "center", -- left, center, right for title
      rounded = false,
    },
  },
})

require('gitsigns').setup({
  current_line_blame = true,
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'eol',
    delay = 100,
    ignore_whitespace = false,
    virt_text_priority = 1000,
    use_focus = true,
  },
})

require("catppuccin").setup({
  flavour = "mocha",
  transparent_background = true,

  color_overrides = {
    mocha = {
      overlay0 = "#333333",
    },
  },

  custom_highlights = function(colors)
    return {
      Visual = { fg = colors.none, bg = colors.surface1 },
      User1 = { fg = "#ffffff", bg = colors.overlay2 },
      User3 = { fg = colors.surface1, bg = colors.none },
      User4 = { fg = colors.white, bg = colors.none },
      User5 = { fg = colors.blue, bg = colors.none },
      User6 = { fg = colors.red, bg = colors.none },
      User7 = { fg = colors.peach, bg = colors.none },
      Todo = { fg = colors.surface0, bg = colors.none },
      DiffAdd = { fg = colors.green, bg = colors.none },
      DiffDelete = { fg = colors.red, bg = colors.none },
      DiffChange = { fg = colors.blue, bg = colors.none },
      WinSeparator = { fg = colors.overlay1, bg = colors.none },
      GitSignsCurrentLineBlame = { fg = colors.surface1, bg = colors.none },
      CopilotSuggestion = { fg = colors.overlay1, bg = colors.none, style = { "italic" } },
      Comment = { fg = colors.overlay2, bg = colors.none, style = { "italic" } },
    }
  end
})

vim.cmd.colorscheme "catppuccin"

require("nvim-tree").setup({
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
})
