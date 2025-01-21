return {
  "echasnovski/mini.nvim",
  config = function()
    require("mini.ai").setup()
    require("mini.cursorword").setup()
    require("mini.pairs").setup()

    require("mini.comment").setup({
      mappings = {
        comment = "<Leader>cc",
        comment_line = "<Leader>cc",
        comment_visual = "<Leader>cc",
        textobject = "gc",
      },
    })

    require("mini.surround").setup({
      mappings = {
        add = "S",
        delete = "ds",
        replace = "cs",
      },
    })
  end,
}
