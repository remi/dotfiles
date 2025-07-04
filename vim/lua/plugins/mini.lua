return {
  "echasnovski/mini.nvim",
  config = function()
    require("mini.ai").setup()
    require("mini.cursorword").setup()
    require("mini.pairs").setup()
    require("mini.move").setup({
      mappings = {
        left = "<S-Tab>",
        right = "<Tab>",
        down = "<M-j>",
        up = "<M-k>",
        line_left = "<S-Tab>",
        line_right = "<Tab>",
        line_down = "<M-j>",
        line_up = "<M-k>",
      },
    })

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

    local starter = require("mini.starter")
    starter.setup({
      items = {
        starter.sections.builtin_actions(),
        starter.sections.telescope(),
      },
      footer = "",
      silent = true,
    })
  end,
}
