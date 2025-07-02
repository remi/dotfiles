return {
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("mason").setup()

      require("mason-lspconfig").setup({
        ensure_installed = { "elixirls", "lua_ls", "solargraph", "ts_ls" },
        automatic_enable = false
      })

      require("lspconfig").elixirls.setup({
        cmd = { vim.fn.stdpath("data") .. "/mason/packages/elixir-ls/language_server.sh" },
      })

      require("lspconfig").lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim", "require" },
            },
          },
        },
      })

      require("lspconfig").solargraph.setup({})
      require("lspconfig").ts_ls.setup({})

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          -- Configure diagnostics
          vim.diagnostic.config({
            virtual_text = true,
            signs = {
              text = {
                [vim.diagnostic.severity.ERROR] = '',
                [vim.diagnostic.severity.WARN] = '',
                [vim.diagnostic.severity.INFO] = '',
                [vim.diagnostic.severity.HINT] = '',
              },
            },
            update_in_insert = true,
            underline = true,
            severity_sort = true,
          })

          -- Unset defaults
          vim.bo[args.buf].formatexpr = nil
          vim.bo[args.buf].omnifunc = nil

          -- Set new mappings
          local opts = { noremap = true, silent = true }
          vim.api.nvim_buf_set_keymap(args.buf, "n", "<leader>ad", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
          vim.api.nvim_buf_set_keymap(args.buf, "n", "<leader>ar", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
          vim.api.nvim_buf_set_keymap(args.buf, "n", "<leader>ah", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
        end,
      })
    end,
  },
}
