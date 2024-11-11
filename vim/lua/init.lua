-- Locale
vim.env.LC_ALL = "fr_CA.UTF-8"

-- Leader keys
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Global options
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
vim.opt.titlestring = vim.fn.hostname()
vim.opt.title = true

vim.opt.backup = true
vim.opt.swapfile = true

local vimlocal = vim.fn.expand('$HOME') .. '/.nvim-local'

vim.opt.shadafile = vimlocal .. '/info'
vim.opt.shada = "'50,<1000,s100,h"

vim.opt.backupdir = vimlocal .. '/backup'
vim.opt.directory = vimlocal .. '/swap'
vim.opt.undofile = true
vim.opt.undodir = vimlocal .. '/undo'

local function ensure_dir(dir)
  if vim.fn.isdirectory(dir) == 0 then
    vim.fn.mkdir(dir, "p")
  end
end

ensure_dir(vim.opt.backupdir:get()[1])
ensure_dir(vim.opt.directory:get()[1])
ensure_dir(vim.opt.undodir:get()[1])

-- Custom match
vim.fn.matchadd('Todo', [[\(\t\|\s\)\+$]])

-- Custom filetypes
vim.filetype.add({
  pattern = {
    ['Procfile'] = 'yaml',
    ['.env'] = 'sh',
    ['.env.*'] = 'sh',
    ['%.jsonschema$'] = 'json',
    ['%.plist$'] = 'xml',
  },
})

local opts = { noremap = true, silent = true }

-- Easy new lines
vim.keymap.set('n', '<M-o>', 'mo<Esc>o<Esc>k`o', opts)
vim.keymap.set('n', '<M-S-o>', 'mo<Esc>O<Esc>j`o', opts)
vim.keymap.set('n', 'K', '<Esc>i<CR><Esc><Esc>', opts)

-- Mark navigation
vim.keymap.set('n', "'", '`', opts)
vim.keymap.set('v', "'", '`', opts)
vim.keymap.set('', "g'", 'g`', opts)
vim.keymap.set('v', "g'", 'g`', opts)
vim.keymap.set('n', 'â', '^a', opts)
vim.keymap.set('n', 'î', '^i', opts)
vim.keymap.set('n', 'ô', '^o', opts)

-- Text objects for forward slash
vim.keymap.set('o', 'i/', ':normal T/vt/<CR>', opts)
vim.keymap.set('v', 'i/', 't/oT/', opts)
vim.keymap.set('o', 'a/', ':normal F/vf/<CR>', opts)
vim.keymap.set('v', 'a/', 'f/oF/', opts)

-- Text objects for vertical bar
vim.keymap.set('o', 'i|', ':normal T|vt|<CR>', opts)
vim.keymap.set('v', 'i|', 't|oT|', opts)
vim.keymap.set('o', 'a|', ':normal F|vf|<CR>', opts)
vim.keymap.set('v', 'a|', 'f|oF|', opts)

-- Remap Enter and Backspace in visual mode
vim.keymap.set('v', '<CR>', '<NOP>', opts)
vim.keymap.set('v', '<BS>', 'dk$', opts)

-- Split navigation
vim.keymap.set('n', '<C-c>', '<C-W>c<CR>', opts)
vim.keymap.set('n', '<C-K>', '<C-W><C-K>', opts)
vim.keymap.set('n', '<C-J>', '<C-W><C-J>', opts)
vim.keymap.set('n', '<C-H>', '<C-W><C-H>', opts)
vim.keymap.set('n', '<C-L>', '<C-W><C-L>', opts)

-- CTRL-T for tags (Canadian keyboard optimization)
vim.keymap.set('n', '<C-T>', '<C-]>', { noremap = true })

-- Line moving
vim.keymap.set('n', '<M-j>', 'ddp', opts)
vim.keymap.set('n', '<M-k>', 'ddkkp', opts)
vim.keymap.set('v', '<M-j>', 'djPV`]', opts)
vim.keymap.set('v', '<M-k>', 'dkPV`]', opts)

-- Buffer navigation
vim.keymap.set('n', '>', ':bnext<CR>', opts)
vim.keymap.set('n', '<', ':bprevious<CR>', opts)

-- Insert current date
vim.keymap.set('i', '<M-d>', '<C-R>=strftime("%Y%m%d")<CR>', opts)
vim.keymap.set('i', '<M-D>', '<C-R>=strftime("%Y-%m-%dT%H:%M:%S%z")<CR>', opts)

-- Duplicate line
vim.keymap.set('n', '<M-d>', "m'yyP`'k", opts)
vim.keymap.set('v', '<M-d>', "m'y'>p`'", opts)

-- Select text characters in current line
vim.keymap.set('n', '<M-v>', '^v$h', opts)

-- Indentation in visual mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)
vim.keymap.set('v', '<Tab>', '>gv', opts)
vim.keymap.set('v', '<S-Tab>', '<gv', opts)
vim.keymap.set('n', '<Tab>', 'mzV>`zl', opts)
vim.keymap.set('n', '<S-Tab>', 'mzV<`zh', opts)

-- Clear search highlighting
vim.keymap.set('n', '<Space>', ':silent noh<Bar>echo<CR>', opts)

-- Change working directory to current file
vim.keymap.set('n', 'èè', ':lcd %:p:h<CR>', opts)

-- Alt-4 for end of line (except last character)
vim.keymap.set('v', '<M-4>', '$h', opts)

-- Disable ex mode
vim.keymap.set('n', 'Q', ':echo "BOOYA! Ex mode is disabled."<CR>', opts)

-- Disable arrow keys
local arrows = { '<Left>', '<Up>', '<Down>', '<Right>' }
for _, key in ipairs(arrows) do
  vim.keymap.set('i', key, '<NOP>', opts)
  vim.keymap.set('n', key, '<NOP>', opts)
end

-- CamelCaseMotion mappings
local camel_maps = { 'w', 'b', 'e' }
for _, key in ipairs(camel_maps) do
  vim.keymap.set('', key, '<Plug>CamelCaseMotion_' .. key, { silent = true })
  vim.keymap.set('o', key, '<Plug>CamelCaseMotion_' .. key, { silent = true })
end

-- Unmap for CamelCase
vim.keymap.del('s', 'w')
vim.keymap.del('s', 'b')
vim.keymap.del('s', 'e')

-- CamelCase text objects
local camel_objects = { 'iw', 'ib', 'ie' }
for _, motion in ipairs(camel_objects) do
  vim.keymap.set('o', motion, '<Plug>CamelCaseMotion_' .. motion, { silent = true })
  vim.keymap.set('x', motion, '<Plug>CamelCaseMotion_' .. motion, { silent = true })
end

-- Leader mappings (after CamelCaseMotion)
vim.keymap.set('n', '<Leader>!d', ':bdelete!<CR>', opts)
vim.keymap.set('n', '<Leader>d', ':bdelete<CR>', opts)
vim.keymap.set('n', '<Leader>D', ':bufdo bdelete!<CR>', opts)
vim.keymap.set('n', '<Leader>w', ':w!<CR>', opts)

-- vim-commentary
vim.keymap.set('n', '<Leader>cc', '<Plug>CommentaryLine')
vim.keymap.set('x', '<Leader>cc', '<Plug>Commentary')

-- nvim-treesitter
vim.keymap.set('n', '<Leader>l', ':NvimTreeToggle<CR>', { silent = true })

-- Restore last cursor position
vim.api.nvim_create_autocmd('BufReadPost', {
  pattern = '*',
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

-- Strip trailing whitespace on save
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*',
  callback = function()
    local cursor_pos = vim.api.nvim_win_get_cursor(0)
    vim.cmd([[%s/\s\+$//e]])
    vim.api.nvim_win_set_cursor(0, cursor_pos)
  end
})

-- QuickFix
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'qf',
  callback = function()
    vim.opt_local.scrolloff = 0
    vim.opt_local.cursorline = true
    vim.keymap.set('n', '<CR>', '<CR>', { buffer = true })
  end,
})

-- Git
vim.api.nvim_create_autocmd('BufReadPost', {
  pattern = 'COMMIT_EDITMSG',
  command = 'normal! gg'
})

-- Ack.vim → Ag.vim
vim.api.nvim_create_user_command('Ag', function(opts)
  vim.cmd('Ack ' .. opts.args)
end, { nargs = '*', complete = 'file' })

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
    {
      "gbprod/yanky.nvim",
      opts = {
        highlight = {
          on_put = false,
          on_yank = false,
        },
      },
    },
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
  }
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

local telescope_builtin = require('telescope.builtin')
local telescope = require("telescope")
telescope.load_extension("yank_history")
vim.keymap.set('n', '<leader>t', telescope_builtin.find_files)
vim.keymap.set('n', '<leader>T', function() telescope_builtin.find_files({ hidden = true }) end)
vim.keymap.set('n', '<leader>o', function() telescope_builtin.find_files({ cwd = vim.fn.expand('%:p:h') }) end)
vim.keymap.set('n', '<leader>,', telescope_builtin.buffers)
vim.keymap.set('n', '<leader>m', telescope_builtin.oldfiles)
vim.keymap.set('n', '<leader>g', telescope_builtin.live_grep)
vim.keymap.set('n', '<leader>y', function() telescope.extensions.yank_history.yank_history() end)

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
  provider = "openai",
  openai = {
    endpoint = "https://scout.mirego.com/api/chat/openai_compatible",
    model = "claude-3-5-sonnet-latest",
  },
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
