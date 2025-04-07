return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = false,
  version = false,
  build = "make",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    provider = "scout",
    vendors = {
      scout = {
        __inherited_from = "openai",
        api_key_name = "SCOUT_API_KEY",
        endpoint = "https://scout.mirego.com/api/chat/openai_compatible",
        model = "gpt-4o", -- claude-3-7-sonnet doesn’t stream…
      },
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
    mappings = {
      edit = "<leader>ai",
      refresh = "<leader>aR",
      toggle = {
        debug = "<leader>aD",
        hint = "<leader>aH",
        repomap = "<leader>aM",
      },
    },
  },
}
