return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "c",
        "elixir",
        "lua",
        "markdown",
        "markdown_inline",
        "query",
        "ruby",
        "ssh_config",
        "typescript",
        "vim",
        "vimdoc",
      },
      auto_install = true,
      highlight = {
        enable = true,
      },
    })
  end,
}
