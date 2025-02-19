return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        matcher = {
          frecency = true,
        },
      },
    },
  },
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          ["grr"] = {
            function() require("snacks").picker.lsp_references() end,
            desc = "LSP references",
          },
        },
      },
    },
  },
}
