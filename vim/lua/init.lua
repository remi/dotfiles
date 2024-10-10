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
  ensure_installed = { "markdown", "markdown_inline", "query" },
  highlight = {
    enable = true,
  }
})

require('render-markdown').setup({
  file_types = { 'markdown', 'Avante' }
})

require('avante_lib').load()

require('avante').setup({
  provider = "claude",
  auto_suggestions_provider = "copilot",
  hints = { enabled = true },
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
      GitSignsCurrentLineBlame = { fg = colors.overlay0, bg = colors.none },
      CopilotSuggestion = { fg = colors.overlay1, bg = colors.none, style = { "italic" } },
      Comment = { fg = colors.overlay2, bg = colors.none, style = { "italic" } },
    }
  end
})

vim.opt.laststatus = 3
vim.cmd.colorscheme "catppuccin"
