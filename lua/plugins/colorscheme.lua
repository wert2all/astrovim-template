return {
  {
    "sainnhe/gruvbox-material",
    lazy = true,
    config = function()
      vim.g.gruvbox_material_foreground = "original"
      --background option can be hard, medium, soft
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_enable_italic = 1
      vim.g.gruvbox_material_better_performance = 1
      vim.g.gruvbox_material_cursor = "auto"
      vim.g.gruvbox_material_statusline_style = "mix"
    end,
  },
  {
    "sainnhe/sonokai",
    lazy = false,
    config = function()
      -- directly inside the plugin declaration.
      vim.g.sonokai_enable_italic = true
      vim.g.sonokai_style = "shusia"
    end,
  },
  { "wilmanbarrios/palenight.nvim", lazy = true },
  { "samharju/synthweave.nvim", lazy = true },
  { "folke/tokyonight.nvim", lazy = true },
  { "rebelot/kanagawa.nvim", lazy = true },
  { "vague2k/vague.nvim", lazy = true },
  { "EdenEast/nightfox.nvim", lazy = true },
  { "fynnfluegge/monet.nvim", name = "monet", lazy = true },
  { "savq/melange-nvim", lazy = true },
  { "koalhack/darcubox-nvim", lazy = true },
  { "xeind/nightingale.nvim", lazy = true },
  { "Shatur/neovim-ayu", lazy=true}
}
