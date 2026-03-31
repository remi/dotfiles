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
  { src = "https://github.com/MeanderingProgrammer/render-markdown.nvim" },
  { src = "https://github.com/ervandew/supertab" },
  { src = "https://github.com/jszakmeister/vim-togglecursor" },
  { src = "https://github.com/echasnovski/mini.nvim" },
})

-- Must be set before packload() so ack.vim doesn't abort on missing ack binary
vim.g.ackprg = "rg --no-heading --color=never --column --line-number"

-- Load all plugins
vim.cmd.packload()

-- Configure all plugins after Neovim finishes initialization
vim.api.nvim_create_autocmd("VimEnter", {
  once = true,
  callback = function()
    -- Catppuccin theme
    require("catppuccin").setup({
      flavour = "mocha",
      transparent_background = true,
      color_overrides = { mocha = { overlay0 = "#333333" } },
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
          MiniCursorword = { fg = colors.none, bg = colors.none, style = { "underline" } },
          MiniCursorwordCurrent = { fg = colors.none, bg = colors.none, style = { "underline" } },
        }
      end,
    })
    vim.cmd.colorscheme("catppuccin")

    -- Telescope
    local telescope = require("telescope")
    local telescope_builtin = require("telescope.builtin")
    telescope.setup({
      defaults = {
        prompt_prefix = "→ ",
        layout_strategy = "bottom_pane",
        layout_config = { height = 25, prompt_position = "bottom" },
      },
      pickers = {
        find_files = { follow = true },
        buffers = { sort_lastused = true, ignore_current_buffer = true },
      },
    })
    telescope.load_extension("yank_history")
    vim.keymap.set("n", "<leader>t", telescope_builtin.find_files)
    vim.keymap.set("n", "<leader>T", function() telescope_builtin.find_files({ hidden = true }) end)
    vim.keymap.set("n", "<leader>o", function() telescope_builtin.find_files({ cwd = vim.fn.expand("%:p:h") }) end)
    vim.keymap.set("n", "<leader>,", telescope_builtin.buffers)
    vim.keymap.set("n", "<leader>m", telescope_builtin.oldfiles)
    vim.keymap.set("n", "<leader>g", telescope_builtin.live_grep)
    vim.keymap.set("n", "<leader>y", function() telescope.extensions.yank_history.yank_history() end)

    -- Ack
    vim.api.nvim_create_user_command("Ag", function(opts) vim.cmd("Ack " .. opts.args) end,
      { nargs = "*", complete = "file" })

    -- Yanky
    require("yanky").setup({ highlight = { on_put = false, on_yank = false } })

    -- Oil
    require("oil").setup({ buf_options = { buflisted = true, bufhidden = "hide" }, columns = { "icon" } })
    vim.keymap.set("n", "-", vim.cmd.Oil, { desc = "Open file explorer" })

    -- Treesitter
    require("nvim-treesitter").setup({
      ensure_installed = { "c", "elixir", "lua", "markdown", "markdown_inline", "query", "ruby", "ssh_config", "typescript", "vim", "vimdoc" },
      auto_install = true,
      highlight = { enable = true },
    })

    -- Mason & LSP
    require("mason").setup()
    require("mason-lspconfig").setup({ ensure_installed = { "elixirls", "lua_ls", "solargraph", "ts_ls" }, automatic_enable = false })
    vim.lsp.config.elixirls = { cmd = { vim.fn.stdpath("data") .. "/mason/packages/elixir-ls/language_server.sh" } }
    vim.lsp.config.lua_ls = { settings = { Lua = { diagnostics = { globals = { "vim", "require" } } } } }
    vim.lsp.config.solargraph = {}
    vim.lsp.config.ts_ls = {}
    vim.lsp.enable("elixirls")
    vim.lsp.enable("lua_ls")
    vim.lsp.enable("solargraph")
    vim.lsp.enable("ts_ls")
    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(args)
        vim.diagnostic.config({ virtual_text = true, signs = { text = { [vim.diagnostic.severity.ERROR] = "", [vim.diagnostic.severity.WARN] = "", [vim.diagnostic.severity.INFO] = "", [vim.diagnostic.severity.HINT] = "" } }, update_in_insert = true, underline = true, severity_sort = true })
        vim.bo[args.buf].formatexpr = nil
        vim.bo[args.buf].omnifunc = nil
        local opts = { noremap = true, silent = true }
        vim.api.nvim_buf_set_keymap(args.buf, "n", "<leader>ad", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
        vim.api.nvim_buf_set_keymap(args.buf, "n", "<leader>ar", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
        vim.api.nvim_buf_set_keymap(args.buf, "n", "<leader>ah", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
      end,
    })

    -- GitSigns
    require("gitsigns").setup({
      current_line_blame = true,
      current_line_blame_opts = { virt_text = true, virt_text_pos = "eol", delay = 100, ignore_whitespace = false, virt_text_priority = 1000, use_focus = true },
    })

    -- Copilot
    require("copilot").setup({
      filetypes = { gitcommit = true },
      suggestion = { enabled = true, auto_trigger = true, keymap = { accept = "<Right>", dismiss = "<Left>", next = "<Down>", prev = "<Up>" } },
    })

    -- Render Markdown
    require("render-markdown").setup({ file_types = { "markdown", "Avante" } })

    -- Mini plugins
    require("mini.ai").setup()
    require("mini.cursorword").setup()
    require("mini.pairs").setup()
    require("mini.move").setup({ mappings = { left = "<S-Tab>", right = "<Tab>", down = "<M-j>", up = "<M-k>", line_left = "<S-Tab>", line_right = "<Tab>", line_down = "<M-j>", line_up = "<M-k>" } })
    require("mini.comment").setup({ mappings = { comment = "<Leader>cc", comment_line = "<Leader>cc", comment_visual = "<Leader>cc", textobject = "gc" } })
    require("mini.surround").setup({ mappings = { add = "S", delete = "ds", replace = "cs" } })

    -- Conform (formatting)
    local conform = require("conform")
    conform.setup({
      formatters_by_ft = { javascript = { "prettierd" }, typescript = { "prettierd" }, javascriptreact = { "prettierd" }, typescriptreact = { "prettierd" }, css = { "prettierd" }, json = { "prettierd" }, markdown = { "prettierd" }, graphql = { "prettierd" }, lua = { "stylua" } },
      format_on_save = function(bufnr)
        if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then return end
        return { timeout_ms = 2000, lsp_format = "fallback" }
      end,
    })

    vim.api.nvim_create_user_command("FormatDisable",
      function(args)
        if args.bang then vim.b.disable_autoformat = true else vim.g.disable_autoformat = true end
        print("Autoformat-on-save disabled")
      end, { desc = "Disable autoformat-on-save", bang = true })

    vim.api.nvim_create_user_command("FormatEnable",
      function()
        vim.b.disable_autoformat = false
        vim.g.disable_autoformat = false
        print("Autoformat-on-save enabled")
      end, { desc = "Re-enable autoformat-on-save" })

    local opts = { noremap = true, silent = true }
    vim.keymap.set("n", "<leader>fe", ":FormatEnable<CR>", opts)
    vim.keymap.set("n", "<leader>fd", ":FormatDisable<CR>", opts)

    -- Linting
    local lint = require("lint")
    lint.linters_by_ft = { elixir = { "credo" }, ruby = { "rubocop" }, javascript = { "eslint_d" }, typescript = { "eslint_d" }, javascriptreact = { "eslint_d" }, typescriptreact = { "eslint_d" } }
    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" },
      { group = lint_augroup, callback = function() lint.try_lint() end })
  end,
})
