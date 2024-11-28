return {
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("mason").setup()

      require("mason-lspconfig").setup({
        ensure_installed = { "elixirls", "lua_ls", "biome", "solargraph", }
      })

      require("lspconfig").elixirls.setup({
        cmd = { vim.fn.stdpath("data") .. "/mason/packages/elixir-ls/language_server.sh" },
      })

      require("lspconfig").lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" }
            }
          }
        }
      })

      require("lspconfig").biome.setup({})
      require("lspconfig").solargraph.setup({})

      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)

          -- Configure signs
          local signs = {
            { name = "DiagnosticSignError", text = "" },
            { name = "DiagnosticSignWarn", text = "" },
            { name = "DiagnosticSignHint", text = "" },
            { name = "DiagnosticSignInfo", text = "" },
          }

          for _, sign in ipairs(signs) do
            vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
          end

          -- Configure diagnostics
          vim.diagnostic.config({
            virtual_text = true,
            signs = { active = signs },
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

          -- Format the current buffer on save, if supported by LSP
          if client.supports_method('textDocument/formatting') then
            vim.api.nvim_create_autocmd('BufWritePre', {
              callback = function()
                vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
              end,
            })
          end
        end,
      })
    end
  }
}
