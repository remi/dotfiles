return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = { "markdown", "markdown_inline", "query", "elixir", "typescript", "ruby" },
      auto_install = true,
      highlight = {
        enable = true,
      }
    })
  end
}
