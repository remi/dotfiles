return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = false,
  version = false,
  build = "make",
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    provider = "openai",
    openai = {
      endpoint = "https://scout.mirego.com/api/chat/openai_compatible",
      model = "claude-3-5-sonnet-latest",
    },

    --provider = 'ollama',
    --vendors = {
    --  ---@type AvanteProvider
    --  ollama = {
    --    ['local'] = true,
    --    endpoint = '127.0.0.1:11434/v1',
    --    model = 'qwen2.5-coder:32b',
    --    parse_response_data = function(data_stream, event_state, opts)
    --      require('avante.providers').copilot.parse_response(data_stream, event_state, opts)
    --    end,
    --    parse_curl_args = function(opts, code_opts)
    --      return {
    --        url = opts.endpoint .. '/chat/completions',
    --        headers = {
    --          ['Accept'] = 'application/json',
    --          ['Content-Type'] = 'application/json',
    --        },
    --        body = {
    --          model = opts.model,
    --          messages = require('avante.providers').copilot.parse_messages(code_opts),
    --          max_tokens = 2048,
    --          stream = true,
    --        },
    --      }
    --    end,
    --  },
    --},

    auto_suggestions_provider = "copilot",
    hints = { enabled = false },
    windows = {
      width = 40,
      sidebar_header = {
        align = "center", -- left, center, right for title
        rounded = false,
      },
    },
  }
}
