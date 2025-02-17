return {
  {
    "rgroli/other.nvim",
    opts = {
      mappings = { "angular", "golang" },
    },
    config = function(_, opts) require("other-nvim").setup(opts) end,
  },
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          ["<Leader>o"] = { "<cmd>Other<cr>", desc = "Open other file" },
        },
      },
    },
  },
}
