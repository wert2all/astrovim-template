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
    end,
  },
  { "wilmanbarrios/palenight.nvim", lazy = true },
  { "samharju/synthweave.nvim", lazy = true },
  { "folke/tokyonight.nvim", lazy = true },
  { "rebelot/kanagawa.nvim", lazy = true },
  { "vague2k/vague.nvim", lazy = true },
  { "EdenEast/nightfox.nvim", lazy = true },
}
