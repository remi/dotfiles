return {
  "catppuccin/nvim",
  config = function()
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
      end,
    })

    vim.cmd.colorscheme("catppuccin")
  end,
}
