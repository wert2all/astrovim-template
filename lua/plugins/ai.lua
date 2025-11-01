return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {},
    opts = {
      strategies = {
        chat = {
          adapter = "openrouter",
        },
        inline = {
          adapter = "openrouter",
        },
        cmd = {
          adapter = "openrouter",
        },
      },
      adapters = {
        http = {
          mistral = function()
            return require("codecompanion.adapters").extend("mistral", {
              env = {
                api_key = os.getenv "MISTRAL_API_KEY",
              },
              schema = {
                model = {
                  default = "codestral-latest",
                },
              },
            })
          end,
          openrouter = function()
            return require("codecompanion.adapters").extend("openai_compatible", {
              env = {
                url = "https://openrouter.ai/api",
                api_key = os.getenv "OPENROUTER_API_KEY",
                chat_url = "/v1/chat/completions",
              },
              schema = {
                model = {
                  default = "openai/gpt-oss-20b:free",
                },
              },
            })
          end,
        },
      },
    },
  },
  {
    "monkoose/neocodeium",
    event = "VeryLazy",
    config = function()
      local neocodeium = require "neocodeium"
      neocodeium.setup()
      vim.keymap.set("i", "<C-l>", neocodeium.accept)
    end,
  },
}
