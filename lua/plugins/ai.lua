return {

  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
      "nvim-treesitter/nvim-treesitter",
    },
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
        openrouter = function()
          return require("codecompanion.adapters").extend("openai_compatible", {
            env = {
              url = "https://openrouter.ai/api",
              api_key = os.getenv("OPENROUTER_API_KEY"),
              chat_url = "/v1/chat/completions",
            },
            schema = {
              model = {
                default = "openrouter/optimus-alpha",
              },
            },
          })
        end,
      },
    },
  },
  -- {
  --   "yetone/avante.nvim",
  --   opts = {
  --     provider = "mistral",
  --     vendors = {
  --       mistral = {
  --         __inherited_from = "openai",
  --         api_key_name = "MISTRAL_API_KEY",
  --         endpoint = "https://api.mistral.ai/v1/",
  --         model = "mistral-large-latest",
  --         max_tokens = 4096, -- to avoid using max_completion_tokens
  --       },
  --     },
  --   },
  -- },

  -- "Exafunction/codeium.vim",
  -- cmd = {
  --   "Codeium",
  --   "CodeiumEnable",
  --   "CodeiumDisable",
  --   "CodeiumToggle",
  --   "CodeiumAuto",
  --   "CodeiumManual",
  -- },
  -- event = "BufEnter",
  -- -- commit = "289eb724e5d6fab2263e94a1ad6e54afebefafb2",
  -- dependencies = {
  --   "AstroNvim/astrocore",
  --   ---@type AstroCoreOpts
  --   opts = {
  --     mappings = {
  --       n = {
  --         ["<Leader>;"] = {
  --           "<Cmd>CodeiumToggle<CR>",
  --           noremap = true,
  --           desc = "Toggle Codeium active",
  --         },
  --       },
  --       i = {
  --         ["<C-g>"] = {
  --           function() return vim.fn["codeium#Accept"]() end,
  --           expr = true,
  --         },
  --         ["<C-;>"] = {
  --           function() return vim.fn["codeium#CycleCompletions"](1) end,
  --           expr = true,
  --         },
  --         ["<C-,>"] = {
  --           function() return vim.fn["codeium#CycleCompletions"](-1) end,
  --           expr = true,
  --         },
  --         ["<C-x>"] = {
  --           function() return vim.fn["codeium#Clear"]() end,
  --           expr = true,
  --         },
  --       },
  --     },
  --   },
  -- },
  -- "supermaven-inc/supermaven-nvim",
  -- config = function()
  --   require("supermaven-nvim").setup {
  --     keymap = { accept_suggestion = "<C-g>" },
  --   }
  -- end
}
