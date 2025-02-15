return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      source_selector = { sources = { { source = "filesystem" } } },
      popup_border_style = "single",
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_by_name = { ".git" },
          always_show = { ".env" },
        },
      },
      close_if_last_window = true,
    },
  },
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          ["<Leader>e"] = { "<cmd>Neotree float reveal<cr>", desc = "Toggle Explorer" },
          ["<Leader>o"] = false,
        },
      },
    },
  },
}
