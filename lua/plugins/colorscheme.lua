return {
  { "sainnhe/gruvbox-material", lazy = true },
  { "wilmanbarrios/palenight.nvim", lazy = true },
  { "samharju/synthweave.nvim", lazy = true },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    config = function()
      require("tokyonight").setup {
        on_highlights = function(hl, c)
          local prompt = "#2d3149"
          hl.TelescopeNormal = {
            bg = c.bg_dark,
            fg = c.fg_dark,
          }
          hl.TelescopeBorder = {
            bg = c.bg_dark,
            fg = c.bg_dark,
          }
          hl.TelescopePromptNormal = {
            bg = prompt,
          }
          hl.TelescopePromptBorder = {
            bg = prompt,
            fg = prompt,
          }
          hl.TelescopePromptTitle = {
            bg = prompt,
            fg = prompt,
          }
          hl.TelescopePreviewTitle = {
            bg = c.bg_dark,
            fg = c.bg_dark,
          }
          hl.TelescopeResultsTitle = {
            bg = c.bg_dark,
            fg = c.bg_dark,
          }

          -- notify borders
          hl.NotifyERRORBorder = { fg = c.bg_dark }
          hl.NotifyWARNBorder = { fg = c.bg_dark }
          hl.NotifyINFOBorder = { fg = c.bg_dark }
          hl.NotifyDEBUGBorder = { fg = c.bg_dark }
          hl.NotifyTRACEBorder = { fg = c.bg_dark }

          -- neotree borders
          hl.NeoTreeFloatBorder = { fg = c.bg }
        end,
      }
    end,
  },
  { "rebelot/kanagawa.nvim", lazy = true },
  { "vague2k/vague.nvim", lazy = true },
  { "EdenEast/nightfox.nvim", lazy = true },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    ---@type CatppuccinOptions
    opts = {
      integrations = {
        aerial = true,
        alpha = true,
        cmp = true,
        dap = true,
        dap_ui = true,
        gitsigns = true,
        illuminate = true,
        indent_blankline = true,
        markdown = true,
        mason = true,
        native_lsp = { enabled = true },
        neotree = true,
        notify = true,
        semantic_tokens = true,
        symbols_outline = true,
        telescope = true,
        treesitter = true,
        ts_rainbow = false,
        ufo = true,
        which_key = true,
        window_picker = true,
      },
    },
  },
  {
    "akinsho/bufferline.nvim",
    optional = true,
    opts = function(_, opts)
      return require("astrocore").extend_tbl(opts, {
        highlights = require("catppuccin.groups.integrations.bufferline").get(),
      })
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    optional = true,
    opts = {
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    },
  },
}
